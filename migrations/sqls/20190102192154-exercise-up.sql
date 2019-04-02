-- TODO: create a constraint that ensures either male or female video-url exists
CREATE TABLE videos (
    id serial primary key,
    male_video_uri text,
    male_thumbnail_uri text,
    female_video_uri text,
    female_thumbnail_uri text,
    name varchar(120) not null
);

-- user has seen a video
CREATE TABLE user_video_watched_receipt (
    user_id int REFERENCES users (id) ON DELETE CASCADE,
    video_id int REFERENCES videos (id) ON DELETE CASCADE,
    unique(user_id, video_id),
    created_at date not null default CURRENT_DATE
);

-- e.g Maps Anabolics
CREATE TABLE programs (
    id serial primary key,
    name varchar(40) unique not null,
    logo_uri text
);


-- exercise across programs. E.g 'bench press', 'barbell squat', etc
CREATE TABLE exercises (
  id serial primary key,
  video_id int REFERENCES videos (id) ON DELETE CASCADE,
  name varchar(50) UNIQUE NOT NULL
);

-- a program has many phases
CREATE TABLE phases (
    id serial primary key,
    program_id int REFERENCES programs (id) ON DELETE CASCADE NOT NULL,
    name varchar(120) not null,
    position int check (position > 0),
    intro_video_id int REFERENCES videos (id) ON DELETE CASCADE NOT NULL,
    unique(program_id, position)
);

-- a phase has many workouts
CREATE TABLE workouts (
    id serial primary key,
    phase_id int REFERENCES phases (id) ON DELETE CASCADE NOT NULL,
    position int check (position > 0),
    unique(phase_id, position)
);

-- a workout has many exercises
CREATE TABLE workout_exercises (
    id serial primary key,
    exercise_id int REFERENCES exercises (id) ON DELETE CASCADE NOT NULL,
    workout_id int REFERENCES workouts (id) ON DELETE CASCADE NOT NULL,
    super_set_id int,
    sets varchar(10),
    reps varchar(40), -- can be 12-16, or 20-40 seconds hold, etc
    position int check (position > 0),
    unique(workout_id, position)
);

CREATE TABLE user_phase (
    phase_id int REFERENCES phases (id) ON DELETE CASCADE NOT NULL,
    user_id int REFERENCES users (id) ON DELETE CASCADE NOT NULL,
    unique(user_id)
);
