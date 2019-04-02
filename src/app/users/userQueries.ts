import { AuthenticationError } from 'apollo-server-errors';
import { IContext } from '../../config/apolloFactory';

const authenticate = (context: IContext) => {
  const user = context.user;
  if (!user) {
    throw new AuthenticationError('User is not authenticated');
  }
};

export const Query = {
  user(_, args, context: IContext) {
    authenticate(context);
    return context.dataSources.userStore.getUserById(context.user.id);
  },
};

export default {};
