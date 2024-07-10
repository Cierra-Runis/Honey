import router from '@ohos.router';
import http from '@ohos.net.http';
import promptAction from '@ohos.promptAction';
import {UserProfile,UserProfileGetRequest,UserProfileResponse} from '../models/User';


//介绍样式
@Extend(Text) function globalFancy() {
  .padding({
    left: 10,
    right: 30,
    top: 10,
    bottom: 10
  }).fontColor(Color.Gray).fontSize(17)
}
//row样式
@Extend(Row) function rowFancy() {
  .width("80%").height("20%").justifyContent(FlexAlign.Start).border({
    width: { bottom: 1 },
    color: Color.Gray,
    style: BorderStyle.Solid
  })
}


@Entry
@Component
struct ProfilePage {

  formatDate(dateTimeString: string): string {
    const date = new Date(dateTimeString);
    const year = date.getFullYear();
    const month = date.getMonth() + 1;
    const day = date.getDate();
    return `${year}年${month}月${day}日`;
  }

  @State userID: UserProfileGetRequest = null;
  @State user: UserProfile = {
    id: 1,
    userId: 1,
    name: "haha",
    description: "没有的",
    createAt: 20020303,
    editAt: 20030405,
    avatarId: "???"
  };
  @State UserProfileResponse: UserProfileResponse = null;

  //这里的参数params是userID
  async fetch(params: UserProfileGetRequest) {
    try {
      let dio = http.createHttp();
      let response = await dio.request('http://localhost:8080/', {
        method: http.RequestMethod.GET,
        extraData: params
      });
      dio.destroy();

      let userProfileResponse: UserProfileResponse = JSON.parse(response.result.toString());
      if (userProfileResponse.profile === undefined) {
        promptAction.showToast({ message: '获取失败' });
      } else {
        this.user = userProfileResponse.profile;
        this.UserProfileResponse = userProfileResponse;
      }
    } catch (e) {
      console.log(e);
      promptAction.showToast({ message: `错误 ${e}` });
    }
  }

  //页面自动调用请求函数，拿到信息
  onInit() {
    if (this.userID) {
      this.fetch(this.userID);
    } else {
      console.warn('userID is null, cannot fetch user profile.');
    }
  }


  build() {
    Navigation() {
      Column() {

        //头像
        Column({ space: 8 }) {
          Image($r("app.media.icon")).width(64)
          //没有名字吗？
          Text(this.user.name).fontSize(18).borderStyle(BorderStyle.Solid)
        }.backgroundColor(Color.Black)
        .width("80%")
        .height("20%")
        .padding(15)
        .backgroundColor(Color.White)
        .margin(10)
        .borderRadius(10)
        .justifyContent(FlexAlign.Center)

        //个人信息
        Column() {
          Row() {
            Text("个性标签").fontSize(15).globalFancy()
            Text( this.user.description ).fontSize(15).borderStyle(BorderStyle.Solid).padding(10).layoutWeight(1)

          }.rowFancy()

          Row() {
            Text("创建时间").fontSize(15).globalFancy()
            Text(this.formatDate(this.user.createAt.toString())).fontSize(15).borderStyle(BorderStyle.Solid)
              .padding(10).layoutWeight(1)
          }.rowFancy()

          Row() {
            Text("更新时间").fontSize(15).globalFancy()
            Text(this.formatDate(this.user.editAt.toString())).fontSize(15).borderStyle(BorderStyle.Solid)
              .padding(10).layoutWeight(1)
          }.rowFancy()

          Image($r("app.media.ic_public_add_norm")).width(40).fillColor("#ff6d51dd")
            .margin({ top: 20 }).onClick(() => {
            router.pushUrl({ url: 'pages/UploadPage' })
          })
          Text("上传句子").fontSize(14).padding(5).fontColor(Color.Gray)

        }
        .width("80%")
        .height("60%")
        .padding(15)
        .backgroundColor(Color.White)
        .margin({ bottom: 10 })
        .borderRadius(10)
        .justifyContent(FlexAlign.Start)

      }.width("100%").height("100%").backgroundImage($r("app.media.changecolor")).backgroundImageSize(ImageSize.Cover)
    }.title('编辑个人信息').titleMode(NavigationTitleMode.Mini)
  }
}
