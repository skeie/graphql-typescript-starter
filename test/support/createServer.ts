const { createTestClient } = require('apollo-server-testing');
import schema from '../../src/schema';
import { createApollo } from '../../src/config/apolloFactory';
import { createUser, db } from './dbHelpers';

import { User } from '../../src/generated/graphql';

const createContext = (testUser: User) => () => ({
  user: testUser,
});

const createDefaultTestUser = async (): Promise<User> => {
  try {
    const usr = await createUser('mptestUser@mail.com');
    return usr;
  } catch (error) {
    console.log('error 1337', error);
  }
};

// @param overrideTestUser used to create a user that will be put on the
// context
const createServer = async () => {
  const testUser = await createDefaultTestUser();
  const server = createApollo(schema, {
    db,
    createContext: createContext(testUser),
  });
  return createTestClient(server);
};

export default createServer;
