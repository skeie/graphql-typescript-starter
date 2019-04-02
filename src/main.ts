import server from './server';

const shutdown = done => {
  server.stop(done);
};

// Nodemon
process.on('exit', shutdown.bind(null, process.exit));
process.on('SIGINT', shutdown.bind(null, process.exit));
process.on('uncaughtException', shutdown.bind(null, process.exit));

const start = async () => {
  await server.init();
  server.start();
};
start();
