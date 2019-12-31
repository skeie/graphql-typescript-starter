// Loading and initializing pg-promise:
/* tslint:disable */
// copied from pg-promise example
import camelCase from 'lodash/camelCase';
import monitor from 'pg-monitor';
import pgPromise, { IDatabase, IMain } from 'pg-promise';
// TODO: move to .env file
import dbConfig from './dbConfig';
import diagnostics from './dbDiagnostics';

// Database connection parameters:
const config = dbConfig;

let pgp: IMain;

export const init = async (): Promise<IDatabase<any>> => {
  pgp = pgPromise({
    query: e => {
      monitor.query(e); // monitor the event;
    },
    receive: function(data: [{ [s: string]: string }]) {
      var template = data[0];
      for (var prop in template) {
        var camel = camelCase(prop);
        if (!(camel in template)) {
          for (var i = 0; i < data.length; i++) {
            var d = data[i];
            d[camel] = d[prop];
            delete d[prop];
          }
        }
      }
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
