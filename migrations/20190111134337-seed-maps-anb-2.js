'use strict';
const fs = require('fs');
const path = require('path');
const csv = require('csv-parser');
const P1 = path.resolve(
  __dirname,
  '../src/app/programs/data/WORKOUTS_PHASE_1.csv'
);
const P2W1 = path.resolve(
  __dirname,
  '../src/app/programs/data/WORKOUTS_PHASE_2_1.csv'
);
const P2W2 = path.resolve(
  __dirname,
  '../src/app/programs/data/WORKOUTS_PHASE_2_2.csv'
);

const P3W1 = path.resolve(
  __dirname,
  '../src/app/programs/data/WORKOUTS_PHASE_3_1.csv'
);

const P3W2 = path.resolve(
  __dirname,
  '../src/app/programs/data/WORKOUTS_PHASE_3_1.csv'
);

const P4W1 = path.resolve(
  __dirname,
  '../src/app/programs/data/WORKOUTS_PHASE_4_1.csv'
);
const P4W2 = path.resolve(
  __dirname,
  '../src/app/programs/data/WORKOUTS_PHASE_4_2.csv'
);
const P4W3 = path.resolve(
  __dirname,
  '../src/app/programs/data/WORKOUTS_PHASE_4_3.csv'
);

function parseCsv(inputFilePath) {
  return new Promise((resolve, reject) => {
    let data = [];
    fs.createReadStream(inputFilePath)
      .pipe(csv())
      .on('data', function(row) {
        try {
          if (row.name) {
            data.push(row);
          }
        } catch (err) {
          reject(err);
        }
      })
      .on('end', function() {
        resolve(data);
      });
  });
}

var dbm;
var type;
var seed;

async function insertPhase(db, phaseName, phasePosition, introVideo) {
  const videoResult = await db.runSql(
    `INSERT INTO videos (male_video_uri, name) VALUES ('${introVideo}', '${phaseName} - intro-video') RETURNING id`
  );

  const videoId = videoResult.rows[0].id;

  const presult = await db.runSql(
    `INSERT INTO phases (program_id, name, position, intro_video_id) VALUES (1, '${phaseName}', ${phasePosition}, ${videoId}) RETURNING id`
  );
  const phaseId = presult.rows[0].id;
  return phaseId;
}

async function insertWorkout(db, csvFile, phaseId, workoutPosition) {
  const workoutExercises = await parseCsv(csvFile);

  const workoutRes = await db.runSql(
    `INSERT INTO workouts (phase_id, position) VALUES (${phaseId}, ${workoutPosition}) RETURNING id`
  );
  const workoutId = workoutRes.rows[0].id;

  await Promise.all(
    workoutExercises.map(async (row, i) => {
      const { name, sets, reps } = row;
      return await db.runSql(
        `INSERT INTO workout_exercises (workout_id, exercise_id, sets, reps, position) VALUES (${workoutId}, (SELECT id FROM exercises WHERE name='${name}'), '${sets}', '${reps}', ${i +
          1})`
      );
    })
  );
}

async function insertWorkoutWithSuperset(
  db,
  csvFile,
  phaseId,
  workoutPosition
) {
  const workoutExercises = await parseCsv(csvFile);

  const workoutRes = await db.runSql(
    `INSERT INTO workouts (phase_id, position) VALUES (${phaseId}, ${workoutPosition}) RETURNING id`
  );
  const workoutId = workoutRes.rows[0].id;

  await Promise.all(
    workoutExercises.map(async (row, i) => {
      const { name, sets, reps, supersetid } = row;

      const position = i + 1;
      const SQL = supersetid
        ? `INSERT INTO workout_exercises (workout_id, exercise_id, sets, reps, position, super_set_id) VALUES (${workoutId}, (SELECT id FROM exercises WHERE name='${name}'), '${sets}', '${reps}', ${position}, ${supersetid})`
        : `INSERT INTO workout_exercises (workout_id, exercise_id, sets, reps, position) VALUES (${workoutId}, (SELECT id FROM exercises WHERE name='${name}'), '${sets}', '${reps}', ${position})`;

      return await db.runSql(SQL);
    })
  );
}

/**
 * We receive the dbmigrate dependency from dbmigrate initially.
 * This enables us to not have to rely on NODE_PATH.
 */
exports.setup = function(options, seedLink) {
  dbm = options.dbmigrate;
  type = dbm.dataType;
  seed = seedLink;
};

exports.up = async function(db) {
  const prePhaseId = await insertPhase(
    db,
    'Pre-phase',
    1,
    'https://embedwistia-a.akamaihd.net/deliveries/16a8ac37e802c7b49be4bbf8acb41947e73ac314/file.mp4'
  );
  const phase1Id = await insertPhase(
    db,
    'Phase I',
    2,
    'https://embedwistia-a.akamaihd.net/deliveries/16a8ac37e802c7b49be4bbf8acb41947e73ac314/file.mp4'
  );
  const phase2Id = await insertPhase(
    db,
    'Phase II',
    3,
    'https://embedwistia-a.akamaihd.net/deliveries/b957efa2fea1a3036ca67b81f8413a4a092b7b0d/file.mp4'
  );
  const phase3Id = await insertPhase(
    db,
    'Phase III',
    4,
    'https://embedwistia-a.akamaihd.net/deliveries/5d25234894659c0fabff9749f162b0d21f8e504b/file.mp4'
  );

  https: await insertWorkout(db, P1, prePhaseId, 1);
  await insertWorkout(db, P2W1, phase1Id, 1);
  await insertWorkout(db, P2W2, phase1Id, 2);
  await insertWorkout(db, P3W1, phase2Id, 1);
  await insertWorkout(db, P3W2, phase2Id, 2);

  await insertWorkoutWithSuperset(db, P4W1, phase3Id, 1);
  await insertWorkoutWithSuperset(db, P4W2, phase3Id, 2);
  await insertWorkoutWithSuperset(db, P4W3, phase3Id, 3);
};

exports.down = async function(db) {
  await db.runSql('DELETE FROM videos');
  await db.runSql('DELETE FROM workout_exercises');
  await db.runSql('DELETE FROM workouts');
  await db.runSql('DELETE FROM phases');
  return null;
};

exports._meta = {
  version: 1,
};
