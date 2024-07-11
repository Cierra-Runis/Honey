import router from '@ohos.router';
import prompt from '@ohos.prompt';
import { UserProfile, UserProfileGetRequest, UserProfileResponse } from '../models/User';
import promptAction from '@ohos.promptAction';
import http from '@ohos.net.http';
import { Constance } from '../commom/Constance';
import { Token } from '../commom/Token';

// 介绍样式
@Extend(Text)
function globalFancy() {
  .padding({
    left: 10,
    right: 10,
    top: 10,
    bottom: 10
  }).fontColor(Color.Gray).fontSize(16)
}

// row样式
@Extend(Row)
function rowFancy() {
  .width("80%").height("20%").justifyContent(FlexAlign.Start).border({
    width: { bottom: 1 },
    color: Color.Gray,
    style: BorderStyle.Solid
  })
}

@Entry
@Component
struct ProfilePage {

  @State private userProfile: UserProfile | undefined = undefined

  aboutToAppear(){
    this.fetch()
  }

  async fetch(){
    try {
      let dio = http.createHttp()
      let res = await dio.request(
        `${Constance.baseUrl}/api/user/profile?userId=${Token.getUserId()}`,
        { header:{'authorization': `Bearer ${Token.getToken()}`} }
      )

      let response = JSON.parse(res.result.toString()) as UserProfileResponse

      if (response.profile === undefined){
        return promptAction.showToast({message:"错误"})
      }

      this.userProfile = response.profile

    }catch (e){
      promptAction.showToast({message:`ERROR: ${e}`})
    }
  }

  build() {
    Navigation() {
      if (this.userProfile === undefined){
        LoadingProgress()
      }else {
        Column() {
          // 头像
          Column({ space: 8 }) {
            Text(this.userProfile.name).fontSize(18).borderStyle(BorderStyle.Solid)
          }
          .width("80%")
          .height("20%")
          .padding(15)
          .backgroundColor(Color.White)
          .margin(10)
          .borderRadius(10)
          .justifyContent(FlexAlign.Center)

          // 个人信息
          Column() {
            Row() {
              Text("昵称").fontSize(15).globalFancy()
              Text(this.userProfile.name)
            }.rowFancy();


            Row() {
              Text("个人介绍").fontSize(15).globalFancy()
              Text(this.userProfile.description)
            }.rowFancy();

            Row() {
              Text("创建时间").fontSize(15).globalFancy()
              Text(new Date(this.userProfile.createAt).toDateString())
            }.rowFancy();

            Row() {
              Text("更新时间").fontSize(15).globalFancy()
              Text(new Date(this.userProfile.editAt).toDateString())

            }.rowFancy();

            Row() {
              Text("上传句子").fontSize(18).padding(1).fontColor(Color.Gray)
              Image($r("app.media.ic_public_add_norm"))
                .width(30)
                .fillColor("#ff6d51dd")
                .padding(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/UploadPage' });
                })
            }.padding(24)

          }
          .width("80%")
          .height("60%")
          .padding(15)
          .backgroundColor(Color.White)
          .margin({ bottom: 10 })
          .borderRadius(10)
          .justifyContent(FlexAlign.Start);
        }.width("100%").height("100%").backgroundColor("#ccc").justifyContent(FlexAlign.Center);
      }
    }.title('个人信息').titleMode(NavigationTitleMode.Mini);
  }
}
