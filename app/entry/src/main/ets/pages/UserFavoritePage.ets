import ArrayList from '@ohos.util.ArrayList'
//import { Hitokoto } from '../models/Hitokoto';

@Observed
class Hitokoto {
  id: string;
  uuid: string;
  hitokoto: string;
  type: string;
  from: string;
  from_who: string;
  creator: string;
  creator_uid: number;
  reviewer: number;
  commit_from: string;
  created_at: string;
  length: number;
  isliked: boolean

  constructor(  id: string, uuid: string, hitokoto: string, type: string, from: string, from_who: string, creator: string, creator_uid: number, reviewer: number, commit_from: string,
                created_at: string, length: number) {
    this.id = id;
    this.uuid = uuid;
    this.hitokoto = hitokoto;
    this.type = type;
    this.from = from;
    this.from_who = from_who;
    this.creator = creator;
    this.creator_uid = creator_uid;
    this.reviewer = reviewer;
    this.commit_from = commit_from;
    this.created_at = created_at;
    this.length = length;

  }

}

// function fetchHitokotoData(): Array<Hitokoto> {
//   return[
//     new Hitokoto('9269', '4fe95780-e679-44fc-a8a4-f963077c13c7', '没有相同的经历是无法相互感受的。1', 'a', '火影忍者', '佩恩', '空吧', 14633, 4756, 'web', '1681565935', 16),
//   ];
// }

@Entry
@Component
struct UserUploadPage {
  @State hitokotoList: Array<Hitokoto>= [
    new Hitokoto('9269','4fe95780-e679-44fc-a8a4-f963077c13c7','没有相同的经历是无法相互感受的。1',
      'a','火影忍者','佩恩','空吧',14633,4756,'web','1681565935', 16),
    new Hitokoto('9211','4fe95780-e679-44fc-a8a4-f963077c13c1','没有相同的经历是无法相互感受的。2',
      'a','火影忍者','佩恩','空吧',14633,4756,'web','1681565935', 16),
    new Hitokoto('9222','4fe95780-e679-44fc-a8a4-f963077c13c2','没有相同的经历是无法相互感受的。3',
      'a','火影忍者','佩恩','空吧',14633,4756,'web','1681565935', 16),
    new Hitokoto('9223','4fe95780-e679-44fc-a8a4-f963077c13c3','没有相同的经历是无法相互感受的。3',
      'a','火影忍者','佩恩','空吧',14633,4756,'web','1681565935', 16),
    new Hitokoto('9225','4fe95780-e679-44fc-a8a4-f963077c13c5','没有相同的经历是无法相互感受的。3',
      'a','火影忍者','佩恩','空吧',14633,4756,'web','1681565935', 16),
    new Hitokoto('9279','4fe95780-e679-44fc-a8a4-f963077c13c8','没有相同的经历是无法相互感受的。3',
      'a','火影忍者','佩恩','空吧',14633,4756,'web','1681565935', 16),
    new Hitokoto('9299','4fe95780-e679-44fc-a8a4-f963077c13c0','没有相同的经历是无法相互感受的。3',
      'a','火影忍者','佩恩','空吧',14633,4756,'web','1681565935', 16),
  ];

  // @State hitokotoList: Array<Hitokoto> = [];
  //
  // // 使用 onMount 生命周期钩子在组件挂载时获取数据
  // onMount() {
  //   // 动态获取数据
  //   this.hitokotoList = fetchHitokotoData();
  // }

  @Builder AppbarAction() {
    Row({ space: 8 }) {
      Button() {
        Image($r('app.media.ic_public_refresh')).width(20).margin(8)
      }.backgroundColor(Color.Transparent)

      Button() {
        Image($r('app.media.ic_public_refresh')).width(20).margin(8)
      }.backgroundColor(Color.Transparent)
    }.justifyContent(FlexAlign.End)
  }
  build() {
    Navigation() {
      List() {
        ForEach(this.hitokotoList, (hitokoto: Hitokoto) => {
          ListItem() {
            HitokotoItem({ content: hitokoto }).margin({ top: 20 })
          }
        },)
      }
      .padding(20)
      .scrollBar(BarState.Off)
      .backgroundColor(0xF1F3F5)
      .scrollBar(BarState.On)
    }.title('Honey')
  }
}


@Component
struct HitokotoItem {
  @ObjectLink content: Hitokoto;

  build() {
    Column({ space: 8 }) {
      Column() {
        Text('「').width('100%')
        Text(this.content.hitokoto)
        Row() {
          Text('」')
        }.width('100%').justifyContent(FlexAlign.End)
      }

      Row({ space: 8 }) {
        Button() {
          Image($r('app.media.ic_public_favor'))
            .width(18).margin(4)
        }.backgroundColor(Color.Transparent)
      }.width('100%').justifyContent(FlexAlign.End)

    }.backgroundColor('#F8F8F8').borderRadius(12).padding(8).margin(8)
  }
}
