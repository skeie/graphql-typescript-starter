import createServer from '../../../../test/support/createServer';
import gql from 'graphql-tag';
import { initDb, cleanDb } from '../../../../test/support/dbHelpers';

const PING_QUERY = gql`
  query Ping {
    ping
  }
`;
describe('Ping', () => {
  it('Ping ping', async () => {
    await initDb();
    const { query } = await createServer({ withUser: false });
    const res = await query({ query: PING_QUERY });
    await cleanDb();
    expect(res).toMatchSnapshot();
  });
});
