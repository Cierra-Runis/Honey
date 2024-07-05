export interface HitokotoRequest {
  type
}


// "id": 9269,
// "uuid": "4fe95780-e679-44fc-a8a4-f963077c13c7",
// "hitokoto": "没有相同的经历是无法相互感受的。",
// "type": "a",
// "from": "火影忍者",
// "from_who": "佩恩",
// "creator": "空吧",
// "creator_uid": 14633,
// "reviewer": 4756,
// "commit_from": "web",
// "created_at": "1681565935",
// "length": 16
export interface Hitokoto {
  id: number,
  uuid: string,
  hitokoto: string,
  type: string,
  from: string,
  from_who: string,
  creator: string,
  creator_uid: number,
  reviewer: number,
  commit_from: string,
  created_at: string,
  length: number
}

