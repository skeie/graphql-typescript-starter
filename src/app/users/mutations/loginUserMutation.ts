import { AuthenticationError } from 'apollo-server-errors';
import { compareHashedString, createToken } from '../../../config/util';
import logger from '../../../config/logger';
import { IContext } from '../../../config/apolloFactory';

async function login(
  _,
  { email, password }: { email: string; password: string },
  context: IContext
) {
  try {
    let user = await context.dataSources.userStore.getUserByEmail(email);
    if (!user) {
      throw new AuthenticationError(`Wrong email or password`);
    }
    const match = await compareHashedString(password, user.passwordHash);

    if (!match) {
      throw new AuthenticationError(
        `Either wrong password or wrong email address for user ${email}`
      );
    }

    const { passwordHash, ...userRest } = user;
    return {
      ...userRest,
      token: createToken(email, `${user.id}`),
    };
  } catch (error) {
    logger.info(`Error while trying to login user ${email}`, error);
    throw error;
  }
}

export default login;
