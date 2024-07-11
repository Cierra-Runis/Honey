import router from '@ohos.router';
import picker from '@ohos.file.picker';
import http from '@ohos.net.http';
import prompt from '@ohos.prompt';

@Entry
@Component
struct UploadAvatarPage {
  @State img: Resource = $r('app.media.icon');  // 默认头像，使用 Resource 类型

  onInit() {
    const params = router.getParams() as any;  // 使用 any 类型，或更具体的类型，如果你知道参数结构
    if (params && params.avatarUrl) {
      this.img = params.avatarUrl;  // 注意这里也需要是 Resource 类型
    }
  }

  build() {
    Navigation() {
      Column() {
        Text("点击下方按钮选择并上传头像").fontSize(18).padding(15).fontColor(Color.Black)
        Image(this.img)  // 正确使用 Resource 类型
          .width(128)
          .height(128)
          .borderRadius(64)
          .margin(10)
        Button('选择并上传头像')
          .fontSize(18).padding(15)
          .backgroundColor(Color.Blue).fontColor(Color.White)
          .borderRadius(5).margin({ top: 20 })
          .onClick(() => {
            this.selectAndUploadImage();
          })
      }
    }.title('上传头像').titleMode(NavigationTitleMode.Mini)
  }

  selectAndUploadImage() {
    // 实现选择图片和上传图片的逻辑

  }
}
