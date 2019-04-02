// TODO: Change this
const APP_SECRET = 'MP-is-aw3some';
import jwt from 'jsonwebtoken';
import bcrypt from 'bcrypt';

import { IContextUser } from './apolloFactory';

// const salt = '349a0f89-1b72-44b4-ad25-099d6abf6ce5';
const saltRounds = 10;

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
