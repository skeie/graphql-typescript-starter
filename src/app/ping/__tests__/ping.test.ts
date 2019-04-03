import createServer from '../../../../test/support/createServer';
import gql from 'graphql-tag';
import { db, initDb, cleanDb } from '../../../../test/support/dbHelpers';

const PING_QUERY = gql`
  query Ping {
    ping
  }
`;

describe('Ping', () => {
  beforeAll(initDb);
  afterAll(cleanDb);

  it('Ping ping', async () => {
    const { query } = await createServer();
    const res = await query({ query: PING_QUERY });
    expect(res).toMatchSnapshot();
  });
});
