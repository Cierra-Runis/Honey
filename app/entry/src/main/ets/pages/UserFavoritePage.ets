import ArrayList from '@ohos.util.ArrayList'
//import { Hitokoto } from '../models/Hitokoto';
import fetch from '@system.fetch'
import http from '@ohos.net.http';
import promptAction from '@ohos.promptAction';
import { Hitokoto, HitokotoResponse } from '../models/Hitokoto'
import { Constance } from '../commom/Constance';
import { Token } from '../commom/Token';
import { UserFavorite, UserFavoriteResponse } from '../models/User';



@Entry
@Component
struct UserUploadPage {
  @State favorites: UserFavorite[] = [];

  aboutToAppear() {
    this.fetch()
  }

  async fetch() {
    try {
      let dio = http.createHttp();
      let response = await dio.request(
        `${Constance.baseUrl}/api/user/favorite?userId=${Token.getUserId()}`,
        { header:{'authorization': `Bearer ${Token.getToken()}`} }
      )
      dio.destroy()

      let res  = JSON.parse(response.result.toString()) as UserFavoriteResponse

      this.favorites = res.favorites;
    } catch (e) {
      console.log(e);
      promptAction.showToast({ message: `错误 ${e}` });
    }
  }




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
        ForEach(this.favorites, (e: UserFavorite) => {
          ListItem() {
            FavoriteItem({ content: e }).margin({ top: 20 })
          }
        },)
      }
    }.title('我的收藏')
  }
}


@Component
struct FavoriteItem {
  private content: UserFavorite;

  @State private hitokoto: Hitokoto | undefined = undefined

  aboutToAppear(){
    this.fetch()
  }

  async fetch(){
    try {
      let dio = http.createHttp();
      let response = await dio.request(`${Constance.baseUrl}/api/hitokoto/${this.content.hitokotoId}`)
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

  build() {
    Column({ space: 8 }) {

      if(this.hitokoto) {
        Column({space: 8}) {
          Text('「').width('100%')
          Text(this.hitokoto.hitokoto).padding({left:12,right:12})
          Row() {
            Text(`——${this.hitokoto.source}`)
          }.width('100%').justifyContent(FlexAlign.End).padding({right: 12})
          Row() {
            Text('」')
          }.width('100%').justifyContent(FlexAlign.End)
        }
      }else {
        LoadingProgress()
      }

    }.backgroundColor('#F8F8F8').borderRadius(12).padding(8).margin(8)
  }
}
