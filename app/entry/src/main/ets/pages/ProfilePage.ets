import router from '@ohos.router';
import prompt from '@ohos.prompt';
import { UserProfile } from '../models/User';

// 介绍样式
@Extend(Text)
function globalFancy() {
  .padding({
    left: 10,
    right: 30,
    top: 10,
    bottom: 10
  }).fontColor(Color.Gray).fontSize(17)
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

  async fetch(){}

  build() {
    Navigation() {
      if (this.userProfile === undefined){
        LoadingProgress()
      }else {
        Column() {
          // 头像
          Column({ space: 8 }) {
            Text(this.userProfile.name).fontSize(18).borderStyle(BorderStyle.Solid);
          }
          .width("80%")
          .height("20%")
          .padding(15)
          .backgroundColor(Color.White)
          .margin(10)
          .borderRadius(10)
          .justifyContent(FlexAlign.Center);

          // 个人信息
          Column() {
            Row() {
              Text("用户名").fontSize(15).globalFancy();
              // TextInput()
              //
              //
              //   .onChange((value: string) => {
              //     this.name = value;
              //   })
              //   .width(200)
              //   .padding(10);
            }.rowFancy();

            Row() {
              Text("电子邮箱").fontSize(15).globalFancy();
              // TextInput()
              //
              //   .onChange((value: string) => {
              //     this.email = value;
              //   })
              //   .width(200)
              //   .padding(10);
            }.rowFancy();

            Row() {
              Text("创建时间").fontSize(15).globalFancy();
              // TextInput()
              //
              //   .onChange((value: string) => {
              //     this.startday = value;
              //   })
              //   .width(200)
              //   .padding(10);
            }.rowFancy();

            Row() {
              Text("更新时间").fontSize(15).globalFancy();
              // TextInput()
              //
              //   .onChange((value: string) => {
              //     this.upday = value;
              //   })
              //   .width(200)
              //   .padding(10);
            }.rowFancy();
            //
            // Button("保存").fontSize(18).padding(1).backgroundColor("#007BFF").fontColor("#FFFFFF").onClick(() => {
            //   this.saveProfile();
            // });

            Row() {
              Text("上传句子").fontSize(18).padding(1).fontColor(Color.Gray);
              Image($r("app.media.ic_public_add_norm"))
                .width(30)
                .fillColor("#ff6d51dd")
                .padding(1)
                .margin({ top: 20 })
                .onClick(() => {
                  router.pushUrl({ url: 'pages/UploadPage' });
                });
            };

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
    }.title('编辑个人信息').titleMode(NavigationTitleMode.Mini);
  }
}
