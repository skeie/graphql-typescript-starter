const { init } = require('./src/config/dbConnection');
import fetch from 'node-fetch';
import get from 'lodash/get';

// TODO: get from .env file
const URL =
  'https://api.wistia.com/v1/medias.json?api_password=6c88fe2d25ebc2a62ea2742d5e018feb2b5265187071b5bc489a3d52e03c4957';

const fetchUrls = async () => {
  const res = await fetch(URL);
  const json = await res.json();

  return json
    .map(row => {
      let uris = row.assets.filter(asset => asset.contentType === 'video/mp4');

      if (!uris.length) {
        console.log('row did not have MP4 file', row);
        return undefined;
      }

      return {
        name: row.name,
        male_thumbnail_uri: get(row, 'thumbnail.url'),
        male_video_uri: uris[0].url,

        // TODO figure out if female
        // female_thumbnail_uri: get(row, 'thumbnail.url'),
        // female_video_uri: uris[0].url,
      };
    })
    .filter(Boolean);
};

const upsertVideo = async (row, db) => {
  const {
    name,
    male_thumbnail_uri,
    male_video_uri,
    female_thumbnail_uri,
    female_video_uri,
  } = row;

  // fetch exercis
  const existingVideo = db.any(
    `SELECT id FROM videos WHERE name ilike '${name}'`,
    row
  );

  let videoId;

  // UPDATE/INSERT VIDEO,
  if (existingVideo.length) {
    videoId = existingVideo[0].id;
    let sql = 'UPDATE videos SET ';
    if (male_thumbnail_uri) {
      sql +=
        'male_thumbnail_uri=${male_thumbnail_uri}, male_video_uri=${male_video_uri} ';
    } else if (female_thumbnail_uri) {
      sql +=
        'female_thumbnail_uri=${female_thumbnail_uri}, female_video_uri=${female_video_uri} ';
    }
    sql += 'WHERE id = ${id}';

    db.none(sql, { ...row, id: videoId });
  } else {
    videoId = await db.one(
      `INSERT INTO videos (name, male_thumbnail_uri, male_video_uri, female_thumbnail_uri, female_video_uri) VALUES ('${name}', '${male_thumbnail_uri}', '${male_video_uri}', '${female_thumbnail_uri}', '${female_video_uri}') RETURNING id`,
      row
    ).id;
  }

  return videoId;
};

const updateDb = async (rows, db) => {
  await Promise.all(
    rows.map(async row => {
      const { name } = row;

      const exRows = await db.any(
        `select id from exercises where name ilike '${name}'`,
        row
      );

      if (exRows.length) {
        const exId = exRows[0];

        const videoId = await upsertVideo(row, db);

        await db.none('UPDATE exercises SET video_id=$1 WHERE id=$2', [
          videoId,
          exId,
        ]);

        // UPDATE EXERCISE WITH VIDEO
      } else {
        console.log('Row did not exist, exiting: ', row);
        throw new Error(`Row did not exist, exiting ${row.name}`);
      }
    })
  );
};

const run = async () => {
  const db = await init();
  const rows = await fetchUrls();
  await updateDb(rows, db);
};

run();
