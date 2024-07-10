interface UserProfile {
  id: number;
  userId: number;
  name: string;
  description: string;
  createAt: number;
  editAt: number;
  avatarId: string;
}

interface LoginRequest {
  username: string;
  password: string;
}

interface LoginResponse {
  message: string;
  token: string | undefined;
}

interface UserProfileGetRequest {
  userId: number;
}

interface UserProfilePostRequest {
  id: number;
  userId: number;
  name: string;
  description: string;
  avatarId: string;
}

interface UserProfileResponse {
  message: string;
  profile: UserProfile | undefined;
}

interface RegisterRequest {
  username: string;
  password: string;
}

interface RegisterResponse {
  message: string;
  token: string | undefined;
}
