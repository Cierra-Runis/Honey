import ArrayList from '@ohos.util.ArrayList'
//import { Hitokoto } from '../models/Hitokoto';
import fetch from '@system.fetch'
import http from '@ohos.net.http';
import promptAction from '@ohos.promptAction';
import { Hitokoto, HitokotoListResponse } from '../models/Hitokoto'
import { Constance } from '../commom/Constance';


async function fetchHitokotoData(userId: number): Promise<Array<Hitokoto>> {
  try {
    let dio = http.createHttp();
    let requestData = { userId: userId };
    let response = await dio.request(`${Constance.baseUrl}/api/user/upload` ,{extraData:requestData})
    dio.destroy()

    let hitokotosResponse  = JSON.parse(response.result.toString()) as HitokotoListResponse

    // if (hitokotosResponse.hitokotoList === undefined) {
    //   return promptAction.showToast({message:'获取失败'});
    // }
    let hitokotoUploadList: Array<Hitokoto> = hitokotosResponse.hitokotoList;
    return hitokotoUploadList
  } catch (e) {
    console.log(e)
    promptAction.showToast({message:`错误 ${e}`})
  }
}

@Entry
@Component
struct UserUploadPage {
  @State hitokotoList: Array<Hitokoto>= [];

  userId: number = 5; // 假设用户ID为1

  aboutToAppear() {
    this.fetch()
  }

  async fetch() {
    try {
      let newItems = await fetchHitokotoData(this.userId);
      this.hitokotoList = [...this.hitokotoList, ...newItems];
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
  content: Hitokoto;

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
