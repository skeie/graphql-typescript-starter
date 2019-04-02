export interface IGqlUser {
  passwordHash?: string;
  id: number;
  programs?: ReadonlyArray<string>;
  email: string;
  gender?: string;
  mpToken?: string;
  currentPhaseId?: string;
}

export interface IDbUser {
  id: number;
  email: string;
  passwordHash: string;
}
