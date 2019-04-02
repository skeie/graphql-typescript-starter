import { ForbiddenError } from 'apollo-server';

export const assertUser = user => {
  if (!user) {
    throw new ForbiddenError('You must be logged in to track workout');
  }
};
