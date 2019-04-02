'use strict';
const bcrypt = require('bcrypt');

async function linkPhaseToUsers(db, users) {
  const phases = await db.runSql('SELECT id FROM phases WHERE position=1');
  users.forEach(async id => {
    await db.runSql(
      'INSERT INTO user_phase (phase_id, user_id) VALUES ($1, $2)',
      [phases.rows[0].id, id]
    );
  });
}

exports.up = function(db) {
  return null;
};

exports.down = async function(db) {
  await db.runSql('DELETE FROM user_phase');
  await db.runSql('DELETE FROM users');
  return null;
};

exports._meta = {
  version: 1,
};
