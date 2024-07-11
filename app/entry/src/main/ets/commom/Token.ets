import jwt from "@ohos/jsonwebtoken";

export class Token {
  private static TOKEN_KEY = 'token';

  static init() {
    PersistentStorage.PersistProp(this.TOKEN_KEY, '');
  }
  // 获取存储的 token
  static getToken(): string {
    return AppStorage.Get<string>(this.TOKEN_KEY) || '';
  }

  static getUserId(): string {
    return jwt.decode(this.getToken(),{ complete: true }).payload['userId']
  }

  // 保存 token 并返回是否成功
  static saveToken(token: string): boolean {

    try {
     return AppStorage.Set(this.TOKEN_KEY, token);
    } catch (error) {
      console.error('Failed to save token:', error);
      return false;
    }
  }

}
