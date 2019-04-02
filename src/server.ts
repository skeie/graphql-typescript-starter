import { ApolloServer } from 'apollo-server-express';
import bodyParser from 'body-parser';
import express from 'express';
import http from 'http';
import morganLogger from 'morgan';
import schema from './schema';
import { init, close } from './config/dbConnection';
import { createApollo } from './config/apolloFactory';
import logger from './config/logger';

// Creates and configures an ExpressJS web server.
class Server {
  private app: express.Application;
  private server: http.Server;
  private apollo: ApolloServer;

  public init = async () => {
    try {
      const db = await this.createDb();
      this.app = express();
      this.apollo = createApollo(schema, { db });
      this.middleware();
      this.routes();
    } catch (error) {
      logger.error(error);
      throw error;
    }
  };

  public createDb() {
    return init();
  }

  public middleware() {
    if (process.env.NODE_ENV !== 'production') {
      this.app.use(morganLogger('dev'));
    }
    this.app.use(bodyParser.json());
    this.app.use(bodyParser.urlencoded({ extended: true }));

    this.apollo.applyMiddleware({
      app: this.app,
    });
  }

  public start(cb = () => null) {
    const port = process.env.PORT || 3000;

    this.server = this.app.listen(port, err => {
      if (err) {
        logger.error('Failed to start server', err);
        throw err;
      }
      logger.info(`🔥 Mp-graphql running on port ${port}...`);
      cb();
    });
  }

  public async stop(cb = () => null) {
    if (this.server) {
      await close();
      this.server.close(cb);
    }
  }

  private routes() {
    /* This is just to get up and running, and to make sure what we've got is
     * working so far. This function will change when we start to add more
     * API endpoints */
    const router = express.Router();

    this.app.use('/', router);
  }
}

export default new Server();
