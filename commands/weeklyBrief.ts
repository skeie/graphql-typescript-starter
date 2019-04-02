// send out a weekly brief message to users
// usage: `NODE_ENV=production node_modules/.bin/ts-node commands/weeklyBrief.ts [<id-treshold>||dryrun]`
// meant to be run once per week.

import { init } from '../src/config/dbConnection';
import sendApnsMessage from '../src/helpers/apns/sendApnsMessage';
const userPrimaryKeyThreshold = process.argv.length > 2 ? process.argv[2] : 14;
const dryRun = process.argv[2] === 'dryrun';
dryRun && console.log('Dry-run..');

async function fetchTokens(db) {
  // fetch tokens that was last sent later then 6 days ago
  const result = await db.any(
    'SELECT * FROM apns_tokens WHERE last_push_sent<=(CURRENT_DATE-6) OR last_push_sent IS NULL'
  );

  // only get users before Adam (user_id 14)
  const ALLOWED_USER_ID_TRESHOLD = userPrimaryKeyThreshold;
  return result.filter(token => token.user_id < ALLOWED_USER_ID_TRESHOLD);
}

function fetchUserPhases(db) {
  return db.any('SELECT * FROM user_phase');
}

function fetchPhases(db) {
  return db.any('SELECT * FROM phases');
}

async function fetchPhaseWorkouts(db, phases) {
  const mappedRes = {};
  await Promise.all(
    phases.map(async phase => {
      const workouts = await db.any(
        'SELECT * FROM workouts WHERE phase_id = $1',
        [phase.id]
      );
      mappedRes[phase.id] = workouts;
    })
  );
  return mappedRes;
}

async function createMessages(db, tokens, userPhases, phaseWorkouts) {
  return Promise.all(
    tokens.map(async token => {
      const userPhase = userPhases.find(p => p.user_id === token.user_id);
      if (!userPhase) return null;

      const phase = phaseWorkouts[userPhase.phase_id];
      const user = await db.one('SELECT * FROM users WHERE id = $1', [
        token.user_id,
      ]);
      const name = user.first_name ? user.first_name : user.email.split('@')[0];
      const workoutLen = phase.length;

      const message = `Morning ${name} 👋 You have ${workoutLen} workout${
        workoutLen === 1 ? '' : 's'
      } this week! Press to see the video for your upcoming workout 💪`;

      return {
        message,
        token: token.token,
      };
    })
  );
}

async function sendMessages(db, messageData) {
  if (dryRun) {
    console.log('Dry-run send: ', messageData);
    return Promise.resolve();
  } else {
    await sendApnsMessage(messageData);

    // UPDATE tokens with timestamp
    return Promise.all(
      messageData.map(async ({ message, token }) => {
        await db.none(
          'UPDATE apns_tokens SET last_push_sent=now() WHERE token=$1',
          [token.token]
        );
      })
    );
  }
}

async function run() {
  const db = await init();

  const tokens = await fetchTokens(db);
  const userPhases = await fetchUserPhases(db);
  const phases = await fetchPhases(db);
  const phaseWorkouts = await fetchPhaseWorkouts(db, phases);
  const messages = await createMessages(db, tokens, userPhases, phaseWorkouts);

  await sendMessages(db, messages);

  console.log(`💰 donezo!: Messages sent: `, messages.length);
}

run();
