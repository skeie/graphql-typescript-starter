import { createToken } from './utils';
import { AuthenticationError, ApolloError } from 'apollo-server-errors';
import { compareHashedString } from '../../../config/util';
import logger from '../../../config/logger';
import { IContext } from '../../../config/apolloFactory';

async function storeApnsToken(
  _,
  { token }: { token: string },
  context: IContext
) {
  try {
    await context.dataSources.userStore.storeApnsToken(token, context.user.id);
    return {
      success: true,
    };
  } catch (error) {
    logger.info('Failed to store apns token', error);
    return { error: 'Failed to store token', success: false };
  }
}

export default storeApnsToken;
