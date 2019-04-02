CREATE TABLE trigger_sessions (
    id serial primary key,
    position int check (position > 0)
);

CREATE TABLE trigger_session_exercise (
    id serial primary key,
    exercise_id int REFERENCES exercises (id) ON DELETE CASCADE NOT NULL,
    trigger_session_id int REFERENCES trigger_sessions (id) ON DELETE CASCADE NOT NULL,
    position int check (position > 0),
    unique(trigger_session_id, position)
);

CREATE TABLE trigger_session_logs (
    id serial primary key,
    user_id int REFERENCES users (id) ON DELETE CASCADE NOT NULL,
    trigger_session_id int REFERENCES trigger_sessions (id) ON DELETE CASCADE NOT NULL,
    created_at date not null default CURRENT_DATE
);

INSERT INTO exercises (id, name) VALUES (63, 'Bodyweight Lunges');
INSERT INTO exercises (id, name) VALUES (64, 'Band Chest Flyes');
INSERT INTO exercises (id, name) VALUES (65, 'Band Rows');
INSERT INTO exercises (id, name) VALUES (66, 'Band Lateral Raise');
INSERT INTO exercises (id, name) VALUES (67, 'Band Curls');
INSERT INTO exercises (id, name) VALUES (68, 'Band Tricep Pressdown');
INSERT INTO exercises (id, name) VALUES (69, 'Bodyweight Squats');
INSERT INTO exercises (id, name) VALUES (70, 'Band Chest Press');
INSERT INTO exercises (id, name) VALUES (71, 'Band Straight Arm Pulldown');
INSERT INTO exercises (id, name) VALUES (72, 'Band Shrugs');
INSERT INTO exercises (id, name) VALUES (73, 'Band Hammer Curls');
INSERT INTO exercises (id, name) VALUES (74, 'Band Overhead Tricep Extension');
INSERT INTO exercises (id, name) VALUES (75, 'Band Rear Delt Flyes');
INSERT INTO exercises (id, name) VALUES (76, 'Band Pulldowns');

INSERT INTO trigger_sessions (position) VALUES (1);
INSERT INTO trigger_sessions (position) VALUES (2);
INSERT INTO trigger_sessions (position) VALUES (3);

INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Bodyweight Lunges'), 1, (SELECT id FROM trigger_sessions WHERE position=1));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Chest Flyes'), 2, (SELECT id FROM trigger_sessions WHERE position=1));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Rows'), 3, (SELECT id FROM trigger_sessions WHERE position=1));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Lateral Raise'), 4, (SELECT id FROM trigger_sessions WHERE position=1));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Curls'), 5, (SELECT id FROM trigger_sessions WHERE position=1));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Tricep Pressdown'), 6, (SELECT id FROM trigger_sessions WHERE position=1));

INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Bodyweight Squats'), 1, (SELECT id FROM trigger_sessions WHERE position=2));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Chest Press'), 2, (SELECT id FROM trigger_sessions WHERE position=2));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Straight Arm Pulldown'), 3, (SELECT id FROM trigger_sessions WHERE position=2));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Shrugs'), 4, (SELECT id FROM trigger_sessions WHERE position=2));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Hammer Curls'), 5, (SELECT id FROM trigger_sessions WHERE position=2));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Overhead Tricep Extension'), 6, (SELECT id FROM trigger_sessions WHERE position=2));

INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Hanging Leg Raises'), 1, (SELECT id FROM trigger_sessions WHERE position=3));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Pulldowns'), 2, (SELECT id FROM trigger_sessions WHERE position=3));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Chest Press'), 3, (SELECT id FROM trigger_sessions WHERE position=3));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Band Rear Delt Flyes'), 4, (SELECT id FROM trigger_sessions WHERE position=3));
INSERT INTO trigger_session_exercise (exercise_id, position, trigger_session_id) VALUES ((SELECT id FROM exercises WHERE name='Standing Calf Raises'), 5, (SELECT id FROM trigger_sessions WHERE position=3));