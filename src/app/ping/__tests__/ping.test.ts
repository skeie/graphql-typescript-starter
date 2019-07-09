import createServer from '../../../../test/support/createServer';
import gql from 'graphql-tag';
import { initDb, cleanDb } from '../../../../test/support/dbHelpers';

const PING_QUERY = gql`
  query Ping {
    ping
  }
`;
let query;
describe('Ping', () => {
  beforeAll(async () => {
    await initDb();
    const res = await createServer();
    query = res.query;
  });

  afterAll(() => {
    return cleanDb();
  });

  it('Ping ping', async () => {
    const res = await query({ query: PING_QUERY });
    expect(res).toMatchSnapshot();
  });
});
