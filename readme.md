## Getting Started

1. Download & Install Dependencies

   ```sh
   # Install dependencies
   $ yarn
   $ createdb name_of_your_db && createdb name_of_your_db_test
   ```

   Then search and replace name_of_your_db and name_of_your_db_test with your db name

   ```sh
   $ yarn run migrate:up
   $ yarn run migrate:up:test
   ```

   ```sh
   $ yarn start
   ```

## Resources

- [Apollo Server](https://www.apollographql.com/)
- [GraphQL](https://graphql.org/)
- [DB Cheatsheet](https://gist.github.com/apolloclark/ea5466d5929e63043dcf)
- [DB Cheatsheet 2](https://gist.github.com/Kartones/dd3ff5ec5ea238d4c546)

## Testing

```sh
yarn test
```

## Database

create migration:

```sh
yarn run migrate create <name> --sql-file
```

Sometimes we change current migrations instead of adding new ones. In that case:

```sh
yarn resetdb
```

### Install guide for generating TS types based on db schema

```sh
db:types
```

https://github.com/rmp135/sql-ts

## File structure

Flow:
schemas -> queries/mutations -> dataSources -> reducers -> queries

### /schemas

This is where we have our graphql schema types layed out.
We also define entry points for the query resolvers and mutations

### /app/<name>Queries

This is where we put our query resolvers. It should use StoreDataSources to manipulate the database, and DataSources to call external services

### /app/<name>Mutations

This is where we put our mutations. It should use StoreDataSources to manipulate the database, and DataSources to call external services

### /app/<name>StoreDataSource

This is where we manipulate the database

### /app/<name>DataSource

This is where we call external services

### /app/<name>Reducers

This is where we serialize data from the StoreDataSources
