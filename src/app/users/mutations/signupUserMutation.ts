import { hashString, createToken } from '../../../config/util';
import { UserInputError } from 'apollo-server-errors';
import logger from '../../../config/logger';
import { IContext } from '../../../config/apolloFactory';

async function signup(
  _,
  { email, password }: { email: string; password: string },
  context: IContext
) {
  try {
    let user = await context.dataSources.userStore.getUserByEmail(email);

    if (user) {
      throw new UserInputError(
        'Looks like you already have an account, try to sign in instead',
        {
          invalidArgs: { email },
        }
      );
    } else {
      const generatePasswordHash = await hashString(password);
      user = await context.dataSources.userStore.createUser({
        email,
        passwordHash: generatePasswordHash,
      });
    }

    const { passwordHash, ...userRest } = user;

    return {
      ...userRest,
      token: createToken(email, `${user.id}`),
    };
  } catch (error) {
    logger.info(`error while trying to login user ${email}`, error);
    throw error;
  }
}

export default signup;
