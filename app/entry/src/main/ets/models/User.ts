import { Hitokoto } from './Hitokoto';
export interface UserProfile {
  id: number;
  userId: number;
  name: string;
  description: string;
  createAt: number;
  editAt: number;
  avatarId: string;
}

export interface UserFavorite {
  id: number;
  userId: number;
  hitokotoId: number;
}

export interface LoginRequest {
  username: string;
  password: string;
}

export interface LoginResponse {
  message: string;
  token: string | undefined;
}

export interface UserProfileGetRequest {
  userId: number;
}

export interface UserProfilePostRequest {
  id: number;
  userId: number;
  name: string;
  description: string;
  avatarId: string;
}

export interface UserFavoritePostRequest {
   userId: number,
   hitokotoId: number,
}

export interface UserFavoriteResponse {
  message: string;
  favorites: UserFavorite[];
}

export interface UserUploadResponse {
  message: string;
  hitokotos: Hitokoto[];
}

export interface UserProfileResponse {
  message: string;
  profile: UserProfile | undefined;
}

export interface RegisterRequest {
  username: string;
  password: string;
}

export interface RegisterResponse {
  message: string;
  token: string | undefined;
}
