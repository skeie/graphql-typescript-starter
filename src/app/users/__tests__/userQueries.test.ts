import gql from 'graphql-tag';
import createServer from '../../../../test/support/createServer';
import { initDb, cleanDb } from '../../../../test/support/dbHelpers';

const USER_QUERY = gql`
  query UserQuery {
    user {
      email
    }
  }
`;

describe('userQueries', () => {
  let query;

  beforeAll(async () => {
    await initDb();
    const serverRes = await createServer();
    query = serverRes.query;
  });

  afterAll(async () => {
    await cleanDb();
  });

  it('should query user', async () => {
    const { data } = await query({
      query: USER_QUERY,
    });
    expect(data).toMatchSnapshot();
  });
});
