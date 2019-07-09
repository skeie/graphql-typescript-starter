
CREATE TABLE users (
  id serial primary key,
  email text unique not null,
  password_hash VARCHAR(100) not null,
  created_at date not null default CURRENT_DATE,
  updated_at date not null default CURRENT_DATE
);

