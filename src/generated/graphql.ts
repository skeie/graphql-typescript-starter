export type Maybe<T> = T | null;

export enum Gender {
  Male = 'male',
  Female = 'female',
}

// ====================================================
// Types
// ====================================================

export interface Query {
  _?: Maybe<boolean>;

  authenticationError?: Maybe<string>;

  forbiddenError?: Maybe<string>;

  user: User;

  ping: string;
}

export interface User {
  id: string;

  email: string;

  userName?: Maybe<string>;

  token?: Maybe<string>;

  gender: Gender;
}

export interface Mutation {
  _?: Maybe<boolean>;

  userInputError?: Maybe<string>;

  login: User;

  signup: User;

  updateUser: User;

  storeApnsToken: GenericResponse;
}

export interface GenericResponse {
  success: boolean;

  error?: Maybe<string>;
}

// ====================================================
// Arguments
// ====================================================

export interface UserInputErrorMutationArgs {
  input?: Maybe<string>;
}
export interface LoginMutationArgs {
  email: string;

  password: string;
}
export interface SignupMutationArgs {
  email: string;

  password: string;

  gender: Gender;
}
export interface UpdateUserMutationArgs {
  gender?: Maybe<Gender>;
}
export interface StoreApnsTokenMutationArgs {
  token: string;
}

import { GraphQLResolveInfo } from 'graphql';

export type Resolver<Result, Parent = {}, Context = {}, Args = {}> = (
  parent: Parent,
  args: Args,
  context: Context,
  info: GraphQLResolveInfo
) => Promise<Result> | Result;

export interface ISubscriptionResolverObject<Result, Parent, Context, Args> {
  subscribe<R = Result, P = Parent>(
    parent: P,
    args: Args,
    context: Context,
    info: GraphQLResolveInfo
  ): AsyncIterator<R | Result> | Promise<AsyncIterator<R | Result>>;
  resolve?<R = Result, P = Parent>(
    parent: P,
    args: Args,
    context: Context,
    info: GraphQLResolveInfo
  ): R | Result | Promise<R | Result>;
}

export type SubscriptionResolver<
  Result,
  Parent = {},
  Context = {},
  Args = {}
> =
  | ((
      ...args: any[]
    ) => ISubscriptionResolverObject<Result, Parent, Context, Args>)
  | ISubscriptionResolverObject<Result, Parent, Context, Args>;

export type TypeResolveFn<Types, Parent = {}, Context = {}> = (
  parent: Parent,
  context: Context,
  info: GraphQLResolveInfo
) => Maybe<Types>;

export type NextResolverFn<T> = () => Promise<T>;

export type DirectiveResolverFn<TResult, TArgs = {}, TContext = {}> = (
  next: NextResolverFn<TResult>,
  source: any,
  args: TArgs,
  context: TContext,
  info: GraphQLResolveInfo
) => TResult | Promise<TResult>;

export namespace QueryResolvers {
  export interface Resolvers<Context = {}, TypeParent = {}> {
    _?: _Resolver<Maybe<boolean>, TypeParent, Context>;

    authenticationError?: AuthenticationErrorResolver<
      Maybe<string>,
      TypeParent,
      Context
    >;

    forbiddenError?: ForbiddenErrorResolver<Maybe<string>, TypeParent, Context>;

    user?: UserResolver<User, TypeParent, Context>;

    ping?: PingResolver<string, TypeParent, Context>;
  }

  export type _Resolver<
    R = Maybe<boolean>,
    Parent = {},
    Context = {}
  > = Resolver<R, Parent, Context>;
  export type AuthenticationErrorResolver<
    R = Maybe<string>,
    Parent = {},
    Context = {}
  > = Resolver<R, Parent, Context>;
  export type ForbiddenErrorResolver<
    R = Maybe<string>,
    Parent = {},
    Context = {}
  > = Resolver<R, Parent, Context>;
  export type UserResolver<R = User, Parent = {}, Context = {}> = Resolver<
    R,
    Parent,
    Context
  >;
  export type PingResolver<R = string, Parent = {}, Context = {}> = Resolver<
    R,
    Parent,
    Context
  >;
}

export namespace UserResolvers {
  export interface Resolvers<Context = {}, TypeParent = User> {
    id?: IdResolver<string, TypeParent, Context>;

    email?: EmailResolver<string, TypeParent, Context>;

    userName?: UserNameResolver<Maybe<string>, TypeParent, Context>;

    token?: TokenResolver<Maybe<string>, TypeParent, Context>;

    gender?: GenderResolver<Gender, TypeParent, Context>;
  }

  export type IdResolver<R = string, Parent = User, Context = {}> = Resolver<
    R,
    Parent,
    Context
  >;
  export type EmailResolver<R = string, Parent = User, Context = {}> = Resolver<
    R,
    Parent,
    Context
  >;
  export type UserNameResolver<
    R = Maybe<string>,
    Parent = User,
    Context = {}
  > = Resolver<R, Parent, Context>;
  export type TokenResolver<
    R = Maybe<string>,
    Parent = User,
    Context = {}
  > = Resolver<R, Parent, Context>;
  export type GenderResolver<
    R = Gender,
    Parent = User,
    Context = {}
  > = Resolver<R, Parent, Context>;
}

export namespace MutationResolvers {
  export interface Resolvers<Context = {}, TypeParent = {}> {
    _?: _Resolver<Maybe<boolean>, TypeParent, Context>;

    userInputError?: UserInputErrorResolver<Maybe<string>, TypeParent, Context>;

    login?: LoginResolver<User, TypeParent, Context>;

    signup?: SignupResolver<User, TypeParent, Context>;

    updateUser?: UpdateUserResolver<User, TypeParent, Context>;

    storeApnsToken?: StoreApnsTokenResolver<
      GenericResponse,
      TypeParent,
      Context
    >;
  }

  export type _Resolver<
    R = Maybe<boolean>,
    Parent = {},
    Context = {}
  > = Resolver<R, Parent, Context>;
  export type UserInputErrorResolver<
    R = Maybe<string>,
    Parent = {},
    Context = {}
  > = Resolver<R, Parent, Context, UserInputErrorArgs>;
  export interface UserInputErrorArgs {
    input?: Maybe<string>;
  }

  export type LoginResolver<R = User, Parent = {}, Context = {}> = Resolver<
    R,
    Parent,
    Context,
    LoginArgs
  >;
  export interface LoginArgs {
    email: string;

    password: string;
  }

  export type SignupResolver<R = User, Parent = {}, Context = {}> = Resolver<
    R,
    Parent,
    Context,
    SignupArgs
  >;
  export interface SignupArgs {
    email: string;

    password: string;

    gender: Gender;
  }

  export type UpdateUserResolver<
    R = User,
    Parent = {},
    Context = {}
  > = Resolver<R, Parent, Context, UpdateUserArgs>;
  export interface UpdateUserArgs {
    gender?: Maybe<Gender>;
  }

  export type StoreApnsTokenResolver<
    R = GenericResponse,
    Parent = {},
    Context = {}
  > = Resolver<R, Parent, Context, StoreApnsTokenArgs>;
  export interface StoreApnsTokenArgs {
    token: string;
  }
}

export namespace GenericResponseResolvers {
  export interface Resolvers<Context = {}, TypeParent = GenericResponse> {
    success?: SuccessResolver<boolean, TypeParent, Context>;

    error?: ErrorResolver<Maybe<string>, TypeParent, Context>;
  }

  export type SuccessResolver<
    R = boolean,
    Parent = GenericResponse,
    Context = {}
  > = Resolver<R, Parent, Context>;
  export type ErrorResolver<
    R = Maybe<string>,
    Parent = GenericResponse,
    Context = {}
  > = Resolver<R, Parent, Context>;
}

/** Directs the executor to skip this field or fragment when the `if` argument is true. */
export type SkipDirectiveResolver<Result> = DirectiveResolverFn<
  Result,
  SkipDirectiveArgs,
  {}
>;
export interface SkipDirectiveArgs {
  /** Skipped when true. */
  if: boolean;
}

/** Directs the executor to include this field or fragment only when the `if` argument is true. */
export type IncludeDirectiveResolver<Result> = DirectiveResolverFn<
  Result,
  IncludeDirectiveArgs,
  {}
>;
export interface IncludeDirectiveArgs {
  /** Included when true. */
  if: boolean;
}

/** Marks an element of a GraphQL schema as no longer supported. */
export type DeprecatedDirectiveResolver<Result> = DirectiveResolverFn<
  Result,
  DeprecatedDirectiveArgs,
  {}
>;
export interface DeprecatedDirectiveArgs {
  /** Explains why this element was deprecated, usually also including a suggestion for how to access supported similar data. Formatted using the Markdown syntax (as specified by [CommonMark](https://commonmark.org/). */
  reason?: string;
}

export interface IResolvers {
  Query?: QueryResolvers.Resolvers;
  User?: UserResolvers.Resolvers;
  Mutation?: MutationResolvers.Resolvers;
  GenericResponse?: GenericResponseResolvers.Resolvers;
}

export interface IDirectiveResolvers<Result> {
  skip?: SkipDirectiveResolver<Result>;
  include?: IncludeDirectiveResolver<Result>;
  deprecated?: DeprecatedDirectiveResolver<Result>;
}
