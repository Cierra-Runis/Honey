export interface HitokotoResponse{
  message: string,
  hitokoto: Hitokoto
}

export interface Hitokoto {
  id: number,
  uuid: string,
  hitokoto: string,
  type: string,
  source: string,
  creatorId: number,
  createAt: number,
  length: number
  sourceWho: string | undefined,
}

