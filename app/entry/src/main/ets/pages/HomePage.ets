import ArrayList from '@ohos.util.ArrayList'
import http from '@ohos.net.http';
import { Hitokoto, HitokotoResponse } from '../models/Hitokoto'
import promptAction from '@ohos.promptAction';

@Entry
@Component
export struct HomePage {
  @State hitokoto : Hitokoto | undefined = undefined;

  aboutToAppear() {
    this.fetch()
  }

  async fetch() {
    try {
      let dio = http.createHttp();
      let response = await dio.request('http://localhost:8080/api/hitokoto')
      dio.destroy()

      let hitokoto = JSON.parse(response.result.toString()) as HitokotoResponse

      if (hitokoto.hitokoto === undefined) {
        return promptAction.showToast({message:'获取失败'});
      }

      this.hitokoto = hitokoto.hitokoto;
    } catch (e) {
      console.log(e)
      promptAction.showToast({message:`错误 ${e}`})
    }
  }

  @Builder AppbarAction() {
    Button() {
      Image($r('app.media.ic_public_refresh')).width(20).margin(8)
    }.backgroundColor(Color.Transparent).onClick(() => {
      this.fetch()
    })
  }

  build() {
    Navigation() {
      Column() {

      if(this.hitokoto === undefined) {
        LoadingProgress().width(100).height(100)
      } else {
        HitokotoItem({ content: this.hitokoto })
      }

      }.height('100%').justifyContent(FlexAlign.Center)
    }.title('Honey')
    .menus(this.AppbarAction())
  }
}

@Component
struct HitokotoItem {
 @Link private content: Hitokoto;

  build() {
    Column({ space: 8 }) {

      Column({space: 8}) {
        Text('「').width('100%')
        Text(this.content.hitokoto).padding({left:12,right:12})
        Row() {
          Text(`——${this.content.source}`)
        }.width('100%').justifyContent(FlexAlign.End).padding({right: 12})
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
