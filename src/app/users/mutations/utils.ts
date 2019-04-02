const APP_SECRET = 'MP-is-aw3some';
import jwt from 'jsonwebtoken';

export const createToken = (
  email: string,
  password: string,
  userId: string
) => {
  return jwt.sign({ email, password, id: userId }, APP_SECRET);
};
