ALTER TABLE workout_logs ADD COLUMN workout_start_date timestamptz default now();