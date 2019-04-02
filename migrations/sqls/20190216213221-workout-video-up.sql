ALTER TABLE workouts ADD COLUMN video_id int REFERENCES videos (id) ON DELETE CASCADE;

-- create videos with dropbox urls:
INSERT INTO videos (male_video_uri, name) VALUES ('https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAD6f-l7d3-WXjhZJD2TdHUha/Male/Workout%20Videos/Pre%20-%20Phase%20Day%201.mp4?raw=1', 'pre-phase - workout 1');
INSERT INTO videos (male_video_uri, name) VALUES ('https://www.dropbox.com/sh/eu0jqrwe3a3djra/AABDuC8l24YmP1KzLPkj6ysXa/Male/Workout%20Videos/Phase%201%20-%20Day%201.mp4?raw=1', 'phase 1 - workout 1');
INSERT INTO videos (male_video_uri, name) VALUES ('https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAKC_H5wlmuxnE5DyPH9iu8a/Male/Workout%20Videos/Phase%201%20-%20Day%202.mp4?raw=1', 'phase 1 - workout 2');
INSERT INTO videos (male_video_uri, name) VALUES ('https://www.dropbox.com/sh/eu0jqrwe3a3djra/AADNpCGaIsPIUmU81mYk9-Lua/Male/Workout%20Videos/Phase%202%20-%20Day%202.mp4?raw=1', 'phase 2 - workout 2');
INSERT INTO videos (male_video_uri, name) VALUES ('https://www.dropbox.com/sh/eu0jqrwe3a3djra/AACvE-lvqAN8nv75Z-OphYFwa/Male/Workout%20Videos/Phase%202%20Day%201.mp4?raw=1', 'phase 2 - workout 2');
INSERT INTO videos (male_video_uri, name) VALUES ('https://www.dropbox.com/sh/eu0jqrwe3a3djra/AACdqo7U4P2gXmZ4eKVfJcgXa/Male/Workout%20Videos/Phase%203%20-%20Day%201.mp4?raw=1', 'phase 3 - workout 1');
INSERT INTO videos (male_video_uri, name) VALUES ('https://www.dropbox.com/sh/eu0jqrwe3a3djra/AADSpIVRxZFOr4vnhUslmXxSa/Male/Workout%20Videos/Phase%203%20-%20Day%202.mp4?raw=1', 'phase 3 - workout 2');
INSERT INTO videos (male_video_uri, name) VALUES ('https://www.dropbox.com/sh/eu0jqrwe3a3djra/AABP6FYEpSgpnOagZ4R9Wozea/Male/Workout%20Videos/Phase%203%20-%20day%203.mp4?raw=1', 'phase 3 - workout 3');

UPDATE workouts SET video_id=(SELECT id FROM videos WHERE name='pre-phase - workout 1' LIMIT 1) WHERE id = 1;
UPDATE workouts SET video_id=(SELECT id FROM videos WHERE name='phase 1 - workout 1' LIMIT 1) WHERE id = 2;
UPDATE workouts SET video_id=(SELECT id FROM videos WHERE name='phase 1 - workout 2' LIMIT 1) WHERE id = 3;
UPDATE workouts SET video_id=(SELECT id FROM videos WHERE name='phase 2 - workout 1' LIMIT 1) WHERE id = 4;
UPDATE workouts SET video_id=(SELECT id FROM videos WHERE name='phase 2 - workout 2' LIMIT 1) WHERE id = 5;
UPDATE workouts SET video_id=(SELECT id FROM videos WHERE name='phase 3 - workout 1' LIMIT 1) WHERE id = 6;
UPDATE workouts SET video_id=(SELECT id FROM videos WHERE name='phase 3 - workout 2' LIMIT 1) WHERE id = 7;
UPDATE workouts SET video_id=(SELECT id FROM videos WHERE name='phase 3 - workout 3' LIMIT 1) WHERE id = 8;

-- upgrade videos with video-api videos:
update videos set male_video_uri='https://cdn.api.video/vod/vi1EappYxOlvYVsLMWKHKYJ/hls/manifest.m3u8', male_thumbnail_uri='https://cdn.api.video/vod/vi1EappYxOlvYVsLMWKHKYJ/thumbnail.jpg',	female_video_uri='https://cdn.api.video/vod/vi6u6419k6BZ7uEA8y8bdIAM/hls/manifest.m3u8',	female_thumbnail_uri='https://cdn.api.video/vod/vi6u6419k6BZ7uEA8y8bdIAM/thumbnail.jpg', name='pre-phase - workout 1' where id=124;
update videos set male_video_uri='https://cdn.api.video/vod/vi6SFo1V9IyrW2g6g6MJrDs2/hls/manifest.m3u8', male_thumbnail_uri='https://cdn.api.video/vod/vi6SFo1V9IyrW2g6g6MJrDs2/thumbnail.jpg',	female_video_uri='https://cdn.api.video/vod/vi24IqKmdcFJvOVjEwZfGPIV/hls/manifest.m3u8',	female_thumbnail_uri='https://cdn.api.video/vod/vi24IqKmdcFJvOVjEwZfGPIV/thumbnail.jpg', name='phase 1 - workout 1' where id=125;
update videos set male_video_uri='https://cdn.api.video/vod/vi7k5ifTUXgWOeOB98wAq14T/hls/manifest.m3u8', male_thumbnail_uri='https://cdn.api.video/vod/vi7k5ifTUXgWOeOB98wAq14T/thumbnail.jpg',	female_video_uri='https://cdn.api.video/vod/vi47CbHUUXIe2sWcuUzQn5Yx/hls/manifest.m3u8',	female_thumbnail_uri='https://cdn.api.video/vod/vi47CbHUUXIe2sWcuUzQn5Yx/thumbnail.jpg', name='phase 1 - workout 2' where id=126;
update videos set male_video_uri='https://cdn.api.video/vod/vi55uC86CQCFoVuTIQBROAU6/hls/manifest.m3u8', male_thumbnail_uri='https://cdn.api.video/vod/vi55uC86CQCFoVuTIQBROAU6/thumbnail.jpg',	female_video_uri='https://cdn.api.video/vod/vi4uVsvHMOWoKMdiwEmacUrM/hls/manifest.m3u8',	female_thumbnail_uri='https://cdn.api.video/vod/vi4uVsvHMOWoKMdiwEmacUrM/thumbnail.jpg', name='phase 2 - workout 1' where id=127;
update videos set male_video_uri='https://cdn.api.video/vod/viPcQ66J8Vra2kX7DPAhlC5/hls/manifest.m3u8', male_thumbnail_uri='https://cdn.api.video/vod/viPcQ66J8Vra2kX7DPAhlC5/thumbnail.jpg',	female_video_uri='https://cdn.api.video/vod/vi1B38MBmnKXyCg3zOnpnlKu/hls/manifest.m3u8',	female_thumbnail_uri='https://cdn.api.video/vod/vi1B38MBmnKXyCg3zOnpnlKu/thumbnail.jpg', name='phase 2 - workout 2' where id=128;
update videos set male_video_uri='https://cdn.api.video/vod/vi4EWfR6hyk2lcydQamxD0FE/hls/manifest.m3u8', male_thumbnail_uri='https://cdn.api.video/vod/vi4EWfR6hyk2lcydQamxD0FE/thumbnail.jpg',	female_video_uri='https://cdn.api.video/vod/vi2oShb87sKjRxVmjuNDR5GH/hls/manifest.m3u8',	female_thumbnail_uri='https://cdn.api.video/vod/vi2oShb87sKjRxVmjuNDR5GH/thumbnail.jpg', name='phase 3 - workout 1' where id=129;
update videos set male_video_uri='https://cdn.api.video/vod/vi1pYxiEQgMxI3TIwFfk6lPB/hls/manifest.m3u8', male_thumbnail_uri='https://cdn.api.video/vod/vi1pYxiEQgMxI3TIwFfk6lPB/thumbnail.jpg',	female_video_uri='https://cdn.api.video/vod/vi3XCrD0eZhvbZv05LjA7TNG/hls/manifest.m3u8',	female_thumbnail_uri='https://cdn.api.video/vod/vi3XCrD0eZhvbZv05LjA7TNG/thumbnail.jpg', name='phase 3 - workout 2' where id=130;
update videos set male_video_uri='https://cdn.api.video/vod/vi1u2dXptRtgDCqo5P1ljAte/hls/manifest.m3u8', male_thumbnail_uri='https://cdn.api.video/vod/vi1u2dXptRtgDCqo5P1ljAte/thumbnail.jpg',	female_video_uri='https://cdn.api.video/vod/vi2dDkERr0aQqR9vxeiIWS9P/hls/manifest.m3u8',	female_thumbnail_uri='https://cdn.api.video/vod/vi2dDkERr0aQqR9vxeiIWS9P/thumbnail.jpg', name='phase 3 - workout 3' where id=131;

