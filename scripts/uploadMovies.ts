const apiVideo = require('@api.video/nodejs-sdk');
const fs = require('fs');
const path = require('path');
const download = require('download');
const hbjs = require('handbrake-js');
const pgPromise = require('pg-promise');
const monitor = require('pg-monitor');
const { IMain, IDatabase, IOptions } = require('pg-promise');

const config = {
  driver: 'pg',
  host: 'localhost',
  port: 5432,
  database: 'mind_pump',
  user: 'postgres',
};

const init = async () => {
  const pgp = pgPromise({
    query: e => {
      monitor.query(e); // monitor the event;
    },
  });

  // Create the database instance with extensions:
  const db = pgp(config);

  await db.query(`SELECT 'DBD::Pg ping test'`).then(() => undefined);
  return db;
};

// Create client and authenticate
// TODO PUT IN ENV
const client = new apiVideo.Client({
  username: 'skeie1337@gmail.com',
  apiKey: 'hc69LDVtnZqahw4FCxMdrgosZW3if8FkMrVSjbjptki',
});

async function downloadDropboxAndUploadToVideoApi(uri, isMale, videoId, db) {
  const sql = isMale
    ? 'male_thumbnail_uri=$1, male_video_uri=$2 '
    : 'female_thumbnail_uri=$1, female_video_uri=$2 ';
  const url = uri.split('/');
  const name = decodeURI(url[url.length - 1]).split('?')[0];
  console.log('downloading: ', name);

  // download dropbox movie
  try {
    await download(uri, './');
  } catch (error) {
    console.log('downlog failed', error);
    throw error;
  }
  return new Promise((resolve, reject) => {
    console.log('Downloaded. Now compressing...');
    // convert video
    hbjs
      .spawn({
        input: `./${name}`,
        output: `./${name}_converted.mp4`,
        preset: 'Very Fast 1080p30',
      })
      .on('complete', async () => {
        let res;
        try {
          console.log('Compress finished.');
          res = await client.videos.upload(`./${name}_converted.mp4`, {
            title: name,
          });
        } catch (error) {
          console.log('Upload to video api failed');
          console.log(error.message);
          return reject(error.message);
        }

        console.log('Upload to video api success');
        const assets = res ? res.assets : null;

        if (!assets) {
          return reject(new Error('assets was null'));
        }

        console.log('Updating video with new video-api urls');
        await db.none(`UPDATE videos SET ${sql} WHERE id = $3`, [
          assets.thumbnail,
          assets.hls,
          videoId,
        ]);
        console.log('Deleting downloaded videos');

        try {
          fs.unlinkSync(name);
          fs.unlinkSync(`${name}_converted.mp4`);
          resolve();
        } catch (error) {
          console.log('Unlink video failed', error);
          return reject(error);
        }
      })
      .on('error', err => {
        console.log('Compress Failed', err);
        reject(err);
      });
  });
}

const asyncForEach = async (array, callback) => {
  for (let index = 0; index < array.length; index++) {
    await callback(array[index], index, array);
  }
};

async function findAndInsertVideos(db, isWorkouts = true) {
  console.log('Fetching non-null videos');

  const exRows = await db.any(
    `select * from ${
      isWorkouts ? 'workouts' : 'exercises'
    } where video_id IS NOT NULL`
  );

  await asyncForEach(exRows, async exRow => {
    const { male_video_uri, female_video_uri } = await db.one(
      'select * from videos where id=$1',
      [exRow.video_id]
    );
    console.log(`Found ${exRow.id} ${male_video_uri}, ${female_video_uri}`);

    // Only do dropbox videos
    if (male_video_uri && male_video_uri.includes('dropbox')) {
      return downloadDropboxAndUploadToVideoApi(
        male_video_uri,
        true,
        exRow.video_id,
        db
      );
    }
    if (female_video_uri && female_video_uri.includes('dropbox')) {
      return downloadDropboxAndUploadToVideoApi(
        female_video_uri,
        false,
        exRow.video_id,
        db
      );
    }
    return Promise.resolve();
  });
}

async function updateVideosWithoutExercises(db) {
  const videoRows = await db.any('select * from videos');

  await asyncForEach(videoRows, async videoRow => {
    const { male_video_uri, female_video_uri } = videoRow;
    console.log(`Found ${videoRow.id} ${male_video_uri}, ${female_video_uri}`);

    // Only do dropbox videos
    if (male_video_uri && male_video_uri.includes('dropbox')) {
      return await downloadDropboxAndUploadToVideoApi(
        male_video_uri,
        true,
        videoRow.id,
        db
      );
    }
    if (female_video_uri && female_video_uri.includes('dropbox')) {
      return downloadDropboxAndUploadToVideoApi(
        female_video_uri,
        false,
        videoRow.id,
        db
      );
    }
    return Promise.resolve();
  });
}

async function printFemaleMovies(db) {
  const videoRows = await db.any('select * from videos');
  videoRows.forEach(video => {
    if (video.female_video_uri) {
      console.log(
        `UPDATE videos SET female_video_uri='${
          video.female_video_uri
        }', female_thumbnail_uri='${video.female_thumbnail_uri}' WHERE id=${
          video.id
        }; \n`
      );
    }
  });
}

async function printMaleMovies(db) {
  const videoRows = await db.any('select * from videos');
  videoRows.forEach(video => {
    if (video.male_video_uri) {
      console.log(
        `UPDATE videos SET male_video_uri='${
          video.male_video_uri
        }', male_thumbnail_uri='${video.male_thumbnail_uri}' WHERE id=${
          video.id
        }; \n`
      );
    }
  });
}

const runTask = async () => {
  const db = await init();
  try {
    await findAndInsertVideos(db);
  } catch (error) {
    console.log('Failed to findAndInsertVideos', error);
    throw error;
  }

  try {
    await updateVideosWithoutExercises(db);
    await printMaleMovies(db);
    await printFemaleMovies(db);
    console.log('Done!');
  } catch (error) {
    console.log('Failed to update db', error);
  }
};

runTask();
