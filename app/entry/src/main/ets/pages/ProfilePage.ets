import router from '@ohos.router';
import resourceManager from '@ohos.resourceManager';

interface UserProfile {
  id: number;
  userId: number;
  name: string;
  description: string;
  createAt: number;
  editAt: number;
  avatarId: Resource;  // 使用 Resource 类型
}

@Entry
@Component
struct ProfilePage {
  @State user: UserProfile = {
    id: 1,
    userId: 1,
    name: "haha",
    description: "没有的",
    createAt: 20020303,
    editAt: 20030405,
    avatarId: $r('app.media.icon')  // 默认头像，使用 Resource 类型
  };

  onInit() {
    const params = router.getParams() as any;  // 使用 any 类型，或更具体的类型
    if (params && params.avatarUrl) {
      this.user.avatarId = params.avatarUrl;  // 使用 Resource 类型
    }
  }

  build() {
    Navigation() {
      Column() {
        Image(this.user.avatarId)  // 显示头像
          .width(64)
          .height(64)
          .borderRadius(32)

        Text(this.user.name)  // 用户名
          .fontSize(18)
          .padding(15)
          .fontColor(Color.Black)

        Column({ space: 8 }) {
          Button("上传头像")
            .fontSize(15)
            .padding(10)
            .fontColor(Color.Blue)
            .onClick(() => {
              router.push({
                url: 'pages/UploadAvatarPage',
                params: { avatarUrl: this.user.avatarId }
              })
            })
        }
        .width("80%")
        .height("20%")
        .padding(15)
        .backgroundColor(Color.White)
        .margin(10)
        .borderRadius(10)
        .justifyContent(FlexAlign.Center)
      }
      .width("100%")
      .height("100%")
      .backgroundImage($r("app.media.changecolor"))
      .backgroundImageSize(ImageSize.Cover)
    }.title('编辑个人信息').titleMode(NavigationTitleMode.Mini)
  }
}
