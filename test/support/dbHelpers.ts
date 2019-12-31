import bcrypt from 'bcrypt';
import { init, close } from '../../src/config/dbConnection';
import { User } from '../../src/generated/graphql';
import { IDatabase } from 'pg-promise';
import expressServer from '../../src/server';

export let db;

export type DatabaseType = IDatabase<any>;
export let server: typeof expressServer;

export async function initExpressServer() {
  // init db
  await initDb();

  // init server
  server = expressServer;
  server.initExpress(db);
}

export const initDb = async () => {
  db = await init();
  return db;
};

type Tables = 'users';

export const deleteTable = async (tableName: Tables) => {
  await db.none(`DELETE FROM ${tableName}`);
};

export const cleanDb = async () => {
  if (db) {
    // Deletes all tables
    await db.none(`DO $$ DECLARE
  r RECORD;
BEGIN
  FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = current_schema()) LOOP
    EXECUTE 'DELETE FROM ' || quote_ident(r.tablename) || ' CASCADE';
  END LOOP;
END $$;`);
  }
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
