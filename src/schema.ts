import { makeExecutableSchema } from 'apollo-server';
import * as schemas from './schemas';

const BaseQuery = `
  type Query {
    _: Boolean
    authenticationError: String
    forbiddenError: String
  }

  type Mutation {
    _: Boolean
    userInputError(input: String): String
  }
`;

// @ts-ignore
const executableSchema = Object.values(schemas).reduce(
  (builder, schema) => {
    builder.typeDefs = [...builder.typeDefs, schema.typeDef];
    builder.resolvers = [...builder.resolvers, schema.resolvers];
    return builder;
  },
  {
    typeDefs: [BaseQuery],
    resolvers: [],
  }
);

export default makeExecutableSchema(executableSchema);
