CREATE TABLE apns_tokens (
  token text primary key,
  user_id int REFERENCES users (id) ON DELETE CASCADE,
  last_push_sent timestamptz,
  created_at timestamptz not null default CURRENT_DATE
);

ALTER TABLE users ADD column first_name varchar(20);
