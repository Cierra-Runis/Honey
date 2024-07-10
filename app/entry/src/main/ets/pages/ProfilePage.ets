import router from '@ohos.router';
import resourceManager from '@ohos.resourceManager';

interface UserProfile {
  id: number;
  userId: number;
  name: string;
  description: string;
  createAt: number;
  editAt: number;
  avatarId: string;
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
    avatarId: ''  // 初始化为空
  };

  onInit() {
    this.user.avatarId = this.getAvatarUri($r('app.media.icon'));
  }

  getAvatarUri(resourceId: Resource): string {
    // 此处假设直接使用资源ID作为URI
    return `resource://${resourceId}`;
  }

  build() {
    Navigation() {
      Column() {
        Column({ space: 8 }) {
          Image(this.user.avatarId) // 显示头像
            .width(64)
            .height(64)
            .borderRadius(32)
          Text(this.user.name) // 用户名
            .fontSize(18)
            .borderStyle(BorderStyle.Solid)
        }
        .width("80%")
        .height("20%")
        .padding(15)
        .backgroundColor(Color.White)
        .margin(10)
        .borderRadius(10)
        .justifyContent(FlexAlign.Center)

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
      .width("100%")
      .height("100%")
      .backgroundImage($r("app.media.changecolor"))
      .backgroundImageSize(ImageSize.Cover)
    }.title('编辑个人信息').titleMode(NavigationTitleMode.Mini)
  }
}
