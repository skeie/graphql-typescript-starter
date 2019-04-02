// Loading and initializing pg-promise:
/* tslint:disable */
// copied from pg-promise example
import pgPromise from 'pg-promise';
import monitor from 'pg-monitor';

import diagnostics from './dbDiagnostics';
// TODO: move to .env file
import dbConfig from './dbConfig';

import { IMain, IDatabase, IOptions } from 'pg-promise';

// Database connection parameters:
const config = dbConfig;

let db: IDatabase<any>, pgp: IMain;

export const init = async (): Promise<IDatabase<any>> => {
  pgp = pgPromise({
    query: e => {
      monitor.query(e); // monitor the event;
    },
  });

  // Create the database instance with extensions:
  const db = pgp(config);

  // Load and initialize optional diagnostics:
  diagnostics.init({});

  await db.query(`SELECT 'DBD::Pg ping test'`).then(() => undefined);
  return db;
};

export const close = () => {
  return pgp.end();
};
