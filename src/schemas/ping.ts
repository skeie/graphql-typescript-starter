import { Query } from '../app/ping/pingQueries';

export const typeDef = `
  extend type Query {
    ping: String!
}
`;

export const resolvers = {
  Query,
};
