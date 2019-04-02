// use this script to pull out image and video urls from a dropbox page
// will output sql statements.
// Usage: ts-node videos.ts > videos.sql
// or node_modules/.bin/ts-node videos.ts > male-videos.sql
var cheerio = require('cheerio');
const { init } = require('./src/config/dbConnection');
const isUpdate = true;

// add your html chunk here
const html = ``;
init().then(async db => {
  // @ts-ignore
  let $ = cheerio.load(html);
  // @ts-ignore
  let links = $('a'); //jquery get all hyperlinks

  // @ts-ignore
  $(links).each(async function(i, link) {
    const url = $(link).attr('href');
    const text = $(link).text();
    if (url.indexOf('.mp4') > -1) {
      const newName = text.replace('.mp4', '').trim();
      const newUrl = url.replace('dl=0', 'raw=1').trim();
      const thumbnail = $(link)
        .find('img')
        .attr('src');

      if (!thumbnail) {
        throw new Error(`No thumb for ${newName}`);
      }

      let SQLstring;

      if (isUpdate) {
        SQLstring = `UPDATE videos SET female_video_uri='${newUrl}', female_thumbnail_uri='${thumbnail}' WHERE name='${newName}';`;
        console.log(SQLstring);
      } else {
        SQLstring = `INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('${newName}', '${newUrl}', '${thumbnail}');`;
        const workoutSql = `
        INSERT INTO exercises (name, video_id)
        VALUES
         (
         '${newName}',
         (select id from videos where name='${newName}' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='${newName}' LIMIT 1);
        `;
        console.log(SQLstring);
        console.log(workoutSql);
      }
    }
  });
});
