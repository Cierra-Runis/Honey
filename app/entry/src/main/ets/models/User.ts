export interface UserProfile {
  id: number;
  userId: number;
  name: string;
  description: string;
  createAt: number;
  editAt: number;
  avatarId: string;
}

export  interface LoginRequest {
  username: string;
  password: string;
}

export  interface LoginResponse {
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

export interface UserProfileResponse {
  message: string;
  profile: UserProfile | undefined;
}

export  interface RegisterRequest {
  username: string;
  password: string;
}

export  interface RegisterResponse {
  message: string;
  token: string | undefined;
}
