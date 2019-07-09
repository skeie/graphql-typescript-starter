export interface IGqlUser {
  passwordHash?: string;
  id: number;
  email: string;
}

export interface IDbUser {
  id: number;
  email: string;
  passwordHash: string;
}
