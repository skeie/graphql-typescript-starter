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
  it('should query user', async () => {
    await initDb();
    const { query } = await createServer({ withUser: true });
    const { data } = await query({
      query: USER_QUERY,
    });
    await cleanDb();
    expect(data).toMatchSnapshot();
  });
});
