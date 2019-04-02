-- one workout_logs row per workout the user logs
CREATE TABLE workout_logs (
    id serial primary key,
    user_id int REFERENCES users (id) ON DELETE CASCADE NOT NULL,
    workout_id int REFERENCES workouts (id) ON DELETE CASCADE NOT NULL,
    is_completed boolean default false,
    created_at timestamptz not null default now(),
    workout_weight_unit weight_unit not null default 'kilos',
    unique(user_id, id)
);

-- ALTER TABLE workout_logs ALTER COLUMN created_at SET type timestamptz;
-- ALTER TABLE workout_logs ALTER COLUMN created_at SET DEFAULT now();

-- a workout_log has many exercises
-- unique to a user
CREATE TABLE exercise_logs (
    id serial primary key,
    workout_logs_id int REFERENCES workout_logs (id) ON DELETE CASCADE NOT NULL,
    workout_exercises_id int REFERENCES workout_exercises (id) ON DELETE CASCADE NOT NULL,
    unique(workout_logs_id, workout_exercises_id)
);

-- an exercise_log has many sets
CREATE TABLE set_logs (
    id serial primary key,
    exercise_logs_id int REFERENCES exercise_logs (id) ON DELETE CASCADE NOT NULL,
    weight int,
    reps int,
    position int check (position > 0),
    unique(exercise_logs_id, position)
);