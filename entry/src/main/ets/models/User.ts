interface UserProfile {
  name: string,
  avatarUrl: string,
  description: string
}

interface LoginRequest {
  username: string,
  password: string
}

interface LoginResponse {
  message: string,
  password: string | undefined
}