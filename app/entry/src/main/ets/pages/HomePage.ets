import ArrayList from '@ohos.util.ArrayList'
import http from '@ohos.net.http';
import { Hitokoto, HitokotoResponse } from '../models/Hitokoto'
import promptAction from '@ohos.promptAction';
import { Constance } from '../commom/Constance';
import { UserFavorite, UserFavoritePostRequest, UserFavoriteResponse } from '../models/User';

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
      let response = await dio.request(`${Constance.baseUrl}/api/hitokoto`)
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

  async like(){
    try {

      let req: UserFavoritePostRequest = {userId: 5, hitokotoId: this.content.id}

      let dio = http.createHttp()
      let res = await dio.request(
        `${Constance.baseUrl}/api/user/favorite`,
        {
          header: {
            'authorization': `Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTcyMDY4NTkwN30.hpMd3c-l_0gDH2yiax00e4Fz-H-8pRKHHv-CdylSb_Y`
          },
          method: http.RequestMethod.POST,
          extraData: req
        }
      )

      let response = JSON.parse(res.result.toString()) as UserFavoriteResponse

      if (response.favorites.length === 0){
        return promptAction.showToast({message: response.message})
      }

      promptAction.showToast({message: response.message})

    }catch (e){
      promptAction.showToast({message:`ERROR: ${e}`})
    }
  }

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
        }.backgroundColor(Color.Transparent).onClick(()=>{
          this.like()
        })
      }.width('100%').justifyContent(FlexAlign.End)

    }.backgroundColor('#F8F8F8').borderRadius(12).padding(8).margin(8)
  }
}
