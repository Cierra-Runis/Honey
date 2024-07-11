export interface HitokotoPostRequest {
  hitokoto: string;
  type: string;
  source: string;
  creatorId: number;
  sourceWho: string | undefined;
}

export interface HitokotoResponse {
  message: string;
  hitokoto: Hitokoto | undefined;
}

export interface HitokotoListResponse {
  message: string;
  hitokotoList: Array<Hitokoto>
}

export interface Hitokoto {
  id: number;
  uuid: string;
  hitokoto: string;
  type: string;
  source: string;
  creatorId: number;
  createAt: number;
  length: number;
  sourceWho: string | undefined;
}
