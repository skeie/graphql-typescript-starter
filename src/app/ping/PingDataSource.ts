import { RESTDataSource } from 'apollo-datasource-rest';

export default class MoviesAPI extends RESTDataSource {
  constructor() {
    super();
  }

  async getMovie(id) {
    return 'ping';
  }
}
