import config from '../../config/database.json';

const NODE_ENV = process.env.NODE_ENV || 'dev';

export default config[NODE_ENV];
