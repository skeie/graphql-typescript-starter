const { exec } = require('child_process');
const apiVideo = require('@api.video/nodejs-sdk');
const hbjs = require('handbrake-js');
const fs = require('fs');

// Create client and authenticate
// TODO PUT IN ENV
const client = new apiVideo.Client({
  username: 'skeie1337@gmail.com',
  apiKey: 'hc69LDVtnZqahw4FCxMdrgosZW3if8FkMrVSjbjptki',
});

function convertAndUploadVideo(name) {
  return new Promise(resolve => {
    hbjs
      .spawn({
        input: `./${name}`,
        output: `./${name}_converted.mp4`,
        preset: 'Very Fast 1080p30',
      })
      .on('complete', async () => {
        console.log('on completed');
        let assets = null;

        try {
          const data = await client.videos.upload(`./${name}_converted.mp4`);
          assets = data.assets;
        } catch (error) {
          console.log('Error in video.api', error);
          throw error;
        }

        fs.unlinkSync(name);
        fs.unlinkSync(`${name}_converted.mp4`);

        return resolve(assets);
      });
  });
}

const WistiaId = {
  p6pjo3f0kw: 'TRIGGER SESSION WORKOUT 2 MALE',
  '4cs27kcou9': 'TRIGGER SESSION WORKOUT 2 FEMALE',
  '4zavv7ehmn': 'TRIGGER SESSION WORKOUT 3 MALE',
  eo22qm7pxz: 'TRIGGER SESSION WORKOUT 3 FEMALE',
  '01k20puvdg': 'PHASE III FULL WORKOUT 3 MALE',
  '4d797rb9pe': 'PHASE I FULL WORKOUT 1 MALE',
  zofm0wegfn: 'PHASE I FULL WORKOUT 1 FEMALE',
  '8pc7bt654w': 'PHASE I FULL WORKOUT 2 MALE',
  ewhhwd9iav: 'PHASE I FULL WORKOUT 2 FEMALE',
  u65me0shwi: 'PHASE II FULL WORKOUT 1 MALE',
  '0agp4ybqhg': 'PHASE II FULL WORKOUT 1 FEMALE',
  bopdpr4x0d: 'PHASE II FULL WORKOUT 2 MALE',
  dpq89j5jsc: 'PHASE II FULL WORKOUT 2 FEMALE',
  '029msbhhkp': 'PHASE III FULL WORKOUT 1 MALE',
  z64en8gjsx: 'PHASE III FULL WORKOUT 1 FEMALE',
  '6knim4e2x2': 'PHASE III FULL WORKOUT 2 MALE',
  '0q5hlisdg2': 'PHASE III FULL WORKOUT 2 FEMALE',
  '67ja3krr89': 'PHASE III FULL WORKOUT 3 FEMALE',
  chuqs0ed91: 'TRIGGER SESSION WORKOUT 1 MALE',
  ruyaw41dbn: 'TRIGGER SESSION WORKOUT 1 FEMALE',
  n0poo8qzu4: 'FOUNDATIONAL EXERCISES INTRO',
};

async function uploadVideosFromWistia(name) {
  const filename = `${name}.mp4`;
  const assets = await convertAndUploadVideo(filename);
  if (filename.includes('FEMALE')) {
    console.log(
      `INSERT INTO videos (female_video_uri, name, video_type, female_video_uri) values ('${
        assets.hls
      }', '${name}', 'intro', '${assets.thumbnail}')`
    );
  } else {
    console.log(
      `INSERT INTO videos (male_video_uri, name, video_type, male_thumbnail_uri) values ('${
        assets.hls
      }', '${name}', 'intro', '${assets.thumbnail}')`
    );
  }
  return Promise.resolve();
}

async function downloadFromWistia(name, id) {
  console.log('Starting to download', name);

  return new Promise((resolve, reject) => {
    exec(
      `youtube-dl  -o "${name}.mp4" http://fast.wistia.net/embed/iframe/${id}`,
      err => {
        if (err) {
          console.log(
            'error in downloading video using youtube-dl, remeber to do install youtube-dl (brew install youtube-dl)',
            err
          );

          reject(err);
        } else {
          console.log('finished downloading ', name);
          resolve();
        }
      }
    );
  });
}

const run = async () => {
  for (const key in WistiaId) {
    try {
      await downloadFromWistia(WistiaId[key], key);
      await uploadVideosFromWistia(WistiaId[key]);
    } catch (error) {
      console.log('error', error);
    }
  }

  console.log('Done!');
};

run();
