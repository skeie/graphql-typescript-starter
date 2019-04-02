import chai from 'chai';
import dirtyChai from 'dirty-chai';
import chaiChange from 'chai-change';
import { cleanDb, initDb } from './support/dbHelpers';

chai.use(dirtyChai);
chai.use(chaiChange);

// TODO: run migrations and tear down migrations after
before(initDb);

beforeEach(cleanDb);
