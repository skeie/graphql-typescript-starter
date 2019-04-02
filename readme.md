## Getting Started

1. Download & Install Dependencies

   ```sh
   # Install dependencies
   $ yarn
   $ createdb mind_pump && createdb mind_pump_test
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
yarn run test:unit
yarn run test:integration

# update snapshots
SNAPSHOT_UPDATE=1 yarn run test:integration
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

Prod dump/restore:

```
heroku pg:backups:capture
heroku pg:backups:download
psql mind_pump -f scripts/clearTables.sql
pg_restore --verbose --clean --no-acl --no-owner -h localhost -d mind_pump latest.dump
```

After dump you might get issues creating rows. Do this:

```
ALTER SEQUENCE exercise_logs_id_seq RESTART WITH 20;
```

More info: https://devcenter.heroku.com/articles/heroku-postgres-import-export

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

### Deployment

This app is autodeployed on merge to master.
See https://dashboard.heroku.com/apps/mp-graphql/deploy/heroku-git
