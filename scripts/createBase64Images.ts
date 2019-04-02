// Usage: ../node_modules/.bin/ts-node createBase64Images.ts
const { execSync } = require('child_process');

const { init } = require('../src/config/dbConnection');

init().then(async db => {
  const rows = await db.any(
    'SELECT id, male_thumbnail_uri, female_thumbnail_uri FROM videos'
  );
  rows
    .filter(r => r.male_thumbnail_uri || r.female_thumbnail_uri)
    .map(({ male_thumbnail_uri, female_thumbnail_uri }) => {
      if (male_thumbnail_uri) {
        let stdout = execSync(
          `python3 ./image_to_base64.py ${male_thumbnail_uri}`
        );
        let uri = stdout.toString().replace('\n$', '');
        console.log(`UPDATE videos SET male_base_64_thumb='${uri}'`);
      }

      if (female_thumbnail_uri) {
        let stdout = execSync(
          `python3 ./image_to_base64.py ${male_thumbnail_uri}`
        );
        let uri = stdout.toString().replace('\n$', '');
        console.log(`UPDATE videos SET female_base_64_thumb='${uri}'`);
      }
    });
});
