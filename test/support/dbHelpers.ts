import bcrypt from 'bcrypt';
import { init, close } from '../../src/config/dbConnection';
import { User } from '../../src/generated/graphql';
import { IDatabase } from 'pg-promise';

export let db;

export type DatabaseType = IDatabase<any>;

export const initDb = async () => {
  db = await init();
  return db;
};

type Tables = 'users';

export const deleteTable = async (tableName: Tables) => {
  await db.none(`DELETE FROM ${tableName}`);
};

export const cleanDb = async () => {
  await db.none('DELETE FROM users');
  await close();
  db = null;
};

export const createUser = async (email: string): Promise<User> => {
  const password = await bcrypt.hash('1234', 10);
  const res = await db.any('select * from users WHERE email ilike $1', [email]);

  if (res.length > 0) {
    return res[0];
  }

  const { id } = await db.one(
    `INSERT INTO users (email, password_hash) VALUES ('${email}', '${password}') RETURNING id`
  );
  const user = await db.one('SELECT * FROM users where id=$1', [id]);
  return user;
};
