'use strict';

var dbm;
var type;
var seed;
var fs = require('fs');
var path = require('path');
var moment = require('moment');
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
    '20190217161338-workout-start-date-up.sql'
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
      const res = await db.runSql('SELECT id, created_at FROM workout_logs');
      return Promise.all(
        res.rows.map(row => {
          return db.runSql(
            `UPDATE workout_logs SET workout_start_date='${moment(
              row.created_at
            ).toString()}' WHERE id=${row.id}`
          );
        })
      );
    });
};

exports.down = function(db) {
  var filePath = path.join(
    __dirname,
    'sqls',
    '20190217161338-workout-start-date-down.sql'
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
