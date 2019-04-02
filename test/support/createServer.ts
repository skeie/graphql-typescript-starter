const { createTestClient } = require('apollo-server-testing');
import schema from '../../src/schema';
import { createApollo } from '../../src/config/apolloFactory';
import { db, createUser } from './dbHelpers';

import { User } from '../../src/generated/graphql';

export let testUser: User;

const createContext = () => ({
  user: testUser,
});

const createDefaultTestUser = async (): Promise<User> => {
  return createUser('mptestUser@mail.com');
};

// @param overrideTestUser used to create a user that will be put on the
// context
const createServer = async (overrideTestUser?: User) => {
  testUser = overrideTestUser || (await createDefaultTestUser());
  const server = createApollo(schema, { db, createContext });
  return createTestClient(server);
};

export default createServer;
