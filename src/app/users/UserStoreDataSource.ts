import { DataSource } from 'apollo-datasource';
import invariant from 'invariant';
import { IDatabase } from 'pg-promise';
import { IGqlUser, IDbUser } from './types';

interface ICreateUserInput {
  gender: string;
  email: string;
  passwordHash: string;
}

class UserStoreDataSource extends DataSource {
  store: IDatabase<any>;
  context: any;

  constructor({ store }) {
    super();
    this.store = store;
  }

  /**
   * This is a function that gets called by ApolloServer when being setup.
   * This function gets called with the datasource config including things
   * like caches and context. We'll assign this.context to the request context
   * here, so we can know about the user making requests
   */
  public initialize(config) {
    this.context = config.context;
  }

  public async getUserByEmail(email: string): Promise<IDbUser | undefined> {
    const result = await this.store.any(
      `SELECT id, email, gender, weight_unit as "weightUnit", password_hash as "passwordHash" FROM users WHERE email ilike $1`,
      [email]
    );

    if (result.length) {
      return result[0];
    }
    return undefined;
  }

  public async getUserById(id: string): Promise<IDbUser> {
    return this.store.one(
      `SELECT id, email, gender, weight_unit as "weightUnit", password_hash as "passwordHash" FROM users WHERE id = $1`,
      [id]
    );
  }

  public async createUser(user: ICreateUserInput) {
    const { id } = await this.store.one(
      `INSERT INTO users (email, gender, password_hash) VALUES ($1, $2, $3) RETURNING id`,
      [user.email, user.gender, user.passwordHash]
    );
    return this.store.one('SELECT * FROM users WHERE id = $1', [id]);
  }

  public async updateGender(gender: string, id: string) {
    invariant(gender === 'male' || gender === 'female', 'Illegal weight unit');
    return this.store.none('UPDATE users SET gender=${gender} WHERE id=${id}', {
      gender,
      id,
    });
  }

  public async updateWeightUnit(weightUnit: string, id: string) {
    invariant(
      weightUnit === 'kilos' || weightUnit === 'pounds',
      'Illegal weight unit'
    );

    return this.store.none(
      'UPDATE users SET weight_unit=${weightUnit} WHERE id=${id}',
      {
        weightUnit,
        id,
      }
    );
  }

  public async storeApnsToken(token: string, userId: string) {
    return this.store.none(
      'INSERT INTO apns_tokens (token, user_id) VALUES ($1, $2)',
      [token, userId]
    );
  }
}

export default UserStoreDataSource;
