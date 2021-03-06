// TODO: Change this
const APP_SECRET = 'this-is-aw3some';
import jwt from 'jsonwebtoken';
import bcrypt from 'bcrypt';

import { IContextUser } from './apolloFactory';

const saltRounds = 10;

export const createToken = (email: string, userId: string) => {
  return jwt.sign({ email, id: userId }, APP_SECRET);
};

export const authenticateUser = (
  authorization?: string
): IContextUser | null => {
  if (authorization) {
    const token = authorization.replace('Bearer ', '');
    const verify = jwt.verify(token, APP_SECRET);

    if (typeof verify === 'string') {
      return null;
    }
    // @ts-ignore
    return verify;
  }

  return null;
};

export const hashString = (plainString: string): Promise<string> => {
  return bcrypt.hash(plainString, saltRounds);
};

export const compareHashedString = (
  plainString: string,
  hash: string
): Promise<boolean> => {
  return bcrypt.compare(plainString, hash);
};
