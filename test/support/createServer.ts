const { createTestClient } = require('apollo-server-testing');
import schema from '../../src/schema';
import { createApollo } from '../../src/config/apolloFactory';
import { createUser, db } from './dbHelpers';

import { User } from '../../src/generated/graphql';

const createContext = (testUser: User) => () => ({
  user: testUser,
});

const createDefaultTestUser = async (): Promise<User> =>
  createUser('mptestUser@mail.com');

// @param overrideTestUser used to create a user that will be put on the
// context
const createServer = async ({ withUser }: { withUser: boolean }) => {
  let testUser = null;
  if (withUser) {
    testUser = await createDefaultTestUser();
  }

  const server = createApollo(schema, {
    db,
    createContext: createContext(testUser),
  });
  return createTestClient(server);
};

export default createServer;
