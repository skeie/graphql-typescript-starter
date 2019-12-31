import { ForbiddenError } from 'apollo-server';

export const assertUser = user => {
  if (!user) {
    throw new ForbiddenError('Forbidden');
  }
};
