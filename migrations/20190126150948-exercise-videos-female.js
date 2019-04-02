/**
 * TODO when we get Wistia urls:
 *
 * Create a script the downloads all videos and create sql statements like here.
 * Then modify the names to match our names
 * Then run this script that properly connects exercises with videos
 *
 */
'use strict';

var dbm;
var type;
var seed;
var fs = require('fs');
var path = require('path');
var Promise;

/**
 * We receive the dbmigrate dependency from dbmigrate initially.
 * This enables us to not have to rely on NODE_PATH.
 */
exports.setup = function(options, seedLink) {
  dbm = options.dbmigrate;
  type = dbm.dataType;
  seed = seedLink;
  Promise = options.Promise;
};

exports.up = function(db) {
  var filePath = path.join(
    __dirname,
    'sqls',
    '20190126150948-exercise-videos-female-up.sql'
  );
  return new Promise(function(resolve, reject) {
    fs.readFile(filePath, { encoding: 'utf-8' }, function(err, data) {
      if (err) return reject(err);
      console.log('received data: ' + data);

      resolve(data);
    });
  })
    .then(function(data) {
      return db.runSql(data);
    })
    .then(async () => {
      // update exercises with the videos
      const exercises = await db.runSql('SELECT id, name FROM videos');

      return Promise.all(
        exercises.rows.map(async row => {
          const exercise = await db.runSql(
            `SELECT id FROM exercises WHERE name ilike '${row.name}'`
          );
          if (exercise.rows.length) {
            const exId = exercise.rows[0].id;
            await db.runSql(
              `UPDATE exercises SET video_id=${row.id} WHERE id=${exId}`
            );
          }
        })
      );
    });
};

exports.down = function(db) {
  var filePath = path.join(
    __dirname,
    'sqls',
    '20190126150948-exercise-videos-female-down.sql'
  );
  return new Promise(function(resolve, reject) {
    fs.readFile(filePath, { encoding: 'utf-8' }, function(err, data) {
      if (err) return reject(err);
      console.log('received data: ' + data);

      resolve(data);
    });
  }).then(function(data) {
    return db.runSql(data);
  });
};

exports._meta = {
  version: 1,
};
