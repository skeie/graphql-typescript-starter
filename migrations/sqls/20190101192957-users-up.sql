CREATE TYPE gender AS ENUM ('male', 'female');
CREATE TYPE weight_unit AS ENUM ('pounds', 'kilos');


CREATE TABLE users (
  id serial primary key,
  email text unique not null,
  gender gender,
  weight_unit weight_unit not null default 'kilos',
  password_hash VARCHAR(100) not null,
  created_at date not null default CURRENT_DATE,
  updated_at date not null default CURRENT_DATE
);

