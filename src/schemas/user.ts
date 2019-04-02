import userQueries, { Query } from '../app/users/userQueries';
import mutations from '../app/users/mutations';

export const typeDef = `
  enum Gender {
    male
    female
  }

  extend type Query {
    user: User!,
  }

  type GenericResponse {
    success: Boolean!
    error: String
  }

  extend type Mutation {
    login(email: String!, password: String!): User!
    signup(email: String!, password: String!, gender: Gender!): User!
    updateUser(gender: Gender): User!
    storeApnsToken(token: String!): GenericResponse!
  }

  type User {
    id: ID!
    email: String!
    userName: String
    token: String
    gender: Gender!
  }
`;

export const resolvers = {
  Query,
  Mutation: mutations,
  ...userQueries,
};
