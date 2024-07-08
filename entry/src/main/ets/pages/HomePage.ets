import ArrayList from '@ohos.util.ArrayList'
import { Hitokoto } from '../models/Hitokoto'

@Entry
@Component
export struct HomePage {
  private hitokoto: Hitokoto =
    {
      "id": 9269,
      "uuid": "4fe95780-e679-44fc-a8a4-f963077c13c7",
      "hitokoto": "没有相同的经历是无法相互感受的。",
      "type": "a",
      "from": "火影忍者",
      "from_who": "佩恩",
      "creator": "空吧",
      "creator_uid": 14633,
      "reviewer": 4756,
      "commit_from": "web",
      "created_at": "1681565935",
      "length": 16
    }

  @Builder AppbarAction() {
    Button() {
      Image($r('app.media.ic_public_refresh')).width(20).margin(8)
    }.backgroundColor(Color.Transparent)
  }

  build() {
    Navigation() {
      Column() {

        HitokotoItem({ content: this.hitokoto })

      }
    }.title('Honey')
    .menus(this.AppbarAction())
  }
}

@Component
struct HitokotoItem {
  private content: Hitokoto;

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
