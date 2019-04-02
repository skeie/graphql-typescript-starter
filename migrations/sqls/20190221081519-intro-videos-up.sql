CREATE TYPE video_type AS ENUM ('intro', 'workout', 'trigger');
ALTER TABLE videos ADD column video_type video_type;
ALTER TABLE videos ADD column position int;

INSERT INTO videos (male_video_uri, name, video_type, male_thumbnail_uri, position) values ('https://cdn.api.video/vod/vi4AgOfB4i7v2F26fQwI9mJ3/hls/manifest.m3u8', 'MAPS INTRO', 'intro',  'https://cdn.api.video/vod/vi4AgOfB4i7v2F26fQwI9mJ3/thumbnail.jpg', 1);
INSERT INTO videos (male_video_uri, name, video_type, male_thumbnail_uri, position) values ('https://cdn.api.video/vod/vi23rMP3IelZ3KWye4uppsbJ/hls/manifest.m3u8', 'FOUNDATIONAL EXERCISES INTRO', 'intro', 'https://cdn.api.video/vod/vi23rMP3IelZ3KWye4uppsbJ/thumbnail.jpg', 2);
INSERT INTO videos (male_video_uri, name, video_type, male_thumbnail_uri, position) values ('https://cdn.api.video/vod/vi45eqpygKREu7wn0vO7Y44p/hls/manifest.m3u8', 'TRIGGER INTRO', 'intro',  'https://cdn.api.video/vod/vi45eqpygKREu7wn0vO7Y44p/thumbnail.jpg', 3);
INSERT INTO videos (male_video_uri, name, video_type, male_thumbnail_uri, position, female_video_uri, female_thumbnail_uri) values ('https://cdn.api.video/vod/vi34yVwar9m64e0hf6nQP9Oi/hls/manifest.m3u8', 'PRE PHASE', 'intro',  'https://cdn.api.video/vod/vi34yVwar9m64e0hf6nQP9Oi/thumbnail.jpg', 4, 'https://cdn.api.video/vod/vi4AGUU9yJKuxafjmb4hhGio/hls/manifest.m3u8', 'https://cdn.api.video/vod/vi4AGUU9yJKuxafjmb4hhGio/thumbnail.jpg');


