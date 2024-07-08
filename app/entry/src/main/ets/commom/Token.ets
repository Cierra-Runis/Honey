

class Token {

  static initLocalUser() {
    PersistentStorage.PersistProp(TOKEN_KEY, '{}');
  }
  // 获取存储的 token
  static getToken(): string | undefined {
    const str = AppStorage.Get<string>(TOKEN_KEY) || '{}';
    return str ? str : undefined;
  }


  // 保存 token 并返回是否成功
  static saveToken(token: string): boolean {

    try {
      AppStorage.Set(TOKEN_KEY, token);
      return true;
    } catch (error) {
      console.error('Failed to save token:', error);
      return false;
    }
  }

}
