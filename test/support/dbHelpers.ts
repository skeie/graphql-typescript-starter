import bcrypt from 'bcrypt';
import range from 'lodash/range';
import { init } from '../../src/config/dbConnection';
import { User } from '../../src/generated/graphql';

export let db;
let trackingData;

export const initDb = async () => {
  db = await init();
};

export const cleanDb = async () => {
  await db.none('DELETE FROM set_logs');
  await db.none('DELETE FROM exercise_logs');
  await db.none('DELETE FROM workout_logs');
  await db.none('DELETE FROM user_phase');
  await db.none('DELETE FROM users');
};

export const createUser = async (email: string): Promise<User> => {
  const password = await bcrypt.hash('1234', 10);
  const { id } = await db.one(
    `INSERT INTO users (email, gender, password_hash) VALUES ('${email}', 'male', '${password}') RETURNING id`
  );
  await db.none(
    `INSERT INTO user_phase (user_id, phase_id) values ($1, (select id from phases where position = 1))`,
    [id]
  );

  return await db.one('SELECT * FROM users where id=$1', [id]);
};

export const createWorkoutLog = async (userEmail, workoutId) => {
  if (!workoutId) {
    let workout = await db.one(
      'SELECT id FROM workouts ORDER BY ID desc LIMIT 1'
    );
    workoutId = workout.id;
  }

  const { id } = await db.one(
    'INSERT INTO workout_logs (user_id, workout_id) VALUES ((SELECT id FROM users WHERE email=$1), $2) returning id',
    [userEmail, workoutId]
  );

  return db.one('SELECT * FROM workout_logs WHERE id = $1', [id]);
};

export const createSetLogs = async (
  workoutId,
  workoutLogId,
  workoutExercisesId,
  numberOfSets = 1
) => {
  if (!workoutExercisesId) {
    const res = await db.one(
      'SELECT we.id FROM workout_exercises we WHERE we.workout_id = $1 order by position LIMIT 1',
      [workoutId]
    );
    workoutExercisesId = res.id;
  }

  const { id } = await db.one(
    'INSERT INTO exercise_logs (workout_logs_id, workout_exercises_id) VALUES($1, $2) RETURNING id',
    [workoutLogId, workoutExercisesId]
  );

  return Promise.all(
    range(0, numberOfSets).map(async position => {
      const weight = 100;
      const reps = 20;
      const res = await db.one(
        'INSERT INTO set_logs (exercise_logs_id, weight, reps, position) VALUES ($1, $2, $3, $4) RETURNING id',
        [id, weight, reps, position + 1]
      );

      return db.one(`SELECT * FROM set_logs WHERE id = $1`, [res.id]);
    })
  );
};

export const debugUserData = async userId => {
  const user = await db.one('SELECT * FROM users WHERE id = $1', [userId]);
  console.log('=============================');
  console.log('DEBUGGING USER');
  console.log('=============================');
  console.log('User: ', require('util').inspect(user, false, null, true));

  const logs = await db.any('SELECT * FROM workout_logs WHERE user_id = $1', [
    userId,
  ]);

  console.log(
    'Workout Logs: ',
    require('util').inspect(logs, false, null, true)
  );

  await Promise.all(
    logs.map(async workoutLog => {
      const exerciseLogs = await db.any(
        'SELECT * FROM exercise_logs WHERE workout_logs_id=$1',
        workoutLog.id
      );

      console.log(
        'Exercise Logs: ',
        require('util').inspect(exerciseLogs, false, null, true)
      );

      return Promise.all(
        exerciseLogs.map(async exerciseLog => {
          const sets = await db.any(
            'SELECT * FROM set_logs WHERE exercise_logs_id = $1',
            [exerciseLog.id]
          );
          console.log(
            'Set Logs: ',
            require('util').inspect(sets, false, null, true)
          );
        })
      );
    })
  );
};
