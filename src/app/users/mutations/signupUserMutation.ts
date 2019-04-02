import { createToken } from './utils';
import { hashString } from '../../../config/util';
import { UserInputError } from 'apollo-server-errors';
import logger from '../../../config/logger';
import { IContext } from '../../../config/apolloFactory';

async function signup(
  _,
  {
    email,
    password,
    gender,
  }: { email: string; password: string; gender: string },
  context: IContext
) {
  try {
    let user = await context.dataSources.userStore.getUserByEmail(email);

    // might wanna throw an error here saying that the user already exists?
    if (user) {
      throw new UserInputError(
        'Looks like you already have an account, try to sign in instead',
        {
          invalidArgs: { email },
        }
      );
    } else {
      const passwordHash = await hashString(password);
      user = await context.dataSources.userStore.createUser({
        email,
        passwordHash,
        gender,
      });
    }

    await context.dataSources.userStore.updateGender(gender, `${user.id}`);

    const { passwordHash, ...userRest } = user;

    return {
      ...userRest,
      token: createToken(email, passwordHash, `${user.id}`),
    };
  } catch (error) {
    logger.info(`error while trying to login user ${email}`, error);
    throw error;
  }
}

export default signup;
