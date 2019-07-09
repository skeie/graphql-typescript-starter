import { ApolloServer } from 'apollo-server-express';
import { Request } from 'express';
import util from 'util';
import { IDatabase } from 'pg-promise';

// user
import UserStoreDataSource from '../app/users/UserStoreDataSource';
import PingDataSource from '../app/ping/PingDataSource';
import { authenticateUser } from './util';
import logger from './logger';

export interface IContextUser {
  id: string;
  email: string;
}

interface IPreConfigContext {
  user: IContextUser;
}

interface IApolloContext {
  dataSources: {
    userStore: UserStoreDataSource;
    ping: PingDataSource;
  };
}

export type IContext = IPreConfigContext & IApolloContext;

// this is the one used by the server.
// other contexts are generated in tests
const defaultCreateContext = ({ req }: { req: Request }): IPreConfigContext => {
  return {
    user: authenticateUser(req.headers.authorization),
  };
};

interface IApolloProps {
  db: IDatabase<any>; // tslint:disable-line
  createContext?: () => IPreConfigContext;
}

export const createApollo = (schema, { db, createContext }: IApolloProps) => {
  const dataSources = () => ({
    userStore: new UserStoreDataSource({ store: db }),
    ping: new PingDataSource(),
  });

  return new ApolloServer({
    schema,
    dataSources,
    context: createContext || defaultCreateContext,
    formatError: (error: Error) => {
      // TODO: proper error
      /* tslint:disable */
      if (process.env.NODE_ENV === 'production') {
        logger.info('Graphql error', error, util.inspect(error));
      } else {
        console.log(util.inspect(error, false, null, true /* enable colors */));
      }
      /* tslint:enable */
      return error;
    },
  });
};
