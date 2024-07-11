import router from '@ohos.router';
import prompt from '@ohos.prompt';

class User {
  id: number;
  name: string;
  email: string;
  token: string;
  email_verified_at: string | null; // 可以是字符串或者null
  created_at: string; // 使用字符串表示日期时间
  updated_at: string; // 使用字符串表示日期时间
  startday: string; // 存储格式化后的日期字符串
  upday: string;
  avatar: string; // 用户头像URL

  constructor(id: number, name: string, email: string, token: string,
              email_verified_at: string | null, created_at: string, updated_at: string, avatar: string) {
    this.id = id;
    this.name = name;
    this.email = email;
    this.token = token;
    this.email_verified_at = email_verified_at;
    this.created_at = created_at;
    this.updated_at = updated_at;
    this.avatar = avatar;

    // 格式化并存储开始日期
    this.startday = this.formatDate(this.created_at);
    this.upday = this.formatDate(this.updated_at);
  }

  private formatDate(dateTimeString: string): string {
    const date = new Date(dateTimeString);
    const year = date.getFullYear();
    const month = date.getMonth() + 1;
    const day = date.getDate();
    return `${year}年${month}月${day}日`;
  }
}

// 示例数据
let user = new User(
  4943,
  "啪啪啪",
  "a632079@hitokoto.cn",
  "EWq9Qq8H3LCW6Jiv3vnVCIqRy5Un08sDgaTztSX4",
  null,
  "2020-02-16T18:18:16.000000Z",
  "2020-02-16T18:18:16.000000Z",
  "path/to/default/avatar.jpg" // 默认头像URL
);

// 邮箱是否验证
let ema: String = "未验证";
if (user.email_verified_at != null) {
  ema = user.email_verified_at;
}

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
  @State img: Resource = $r('app.media.icon');  // 默认头像，使用 Resource 类型
  @State name: string = user.name;
  @State email: string = user.email;
  @State startday: string = user.startday;
  @State upday: string = user.upday;

  onInit() {
    const params = router.getParams() as any;  // 使用 any 类型，或更具体的类型
    if (params && params.avatar) {
      this.img = params.avatar;  // 更新头像
    }
  }

  saveProfile() {
    user.name = this.name;
    user.email = this.email;
    user.startday = this.startday;
    user.upday = this.upday;

    prompt.showToast({
      message: "个人信息已更新",
      duration: 3000
    });
  }

  build() {
    Navigation() {
      Column() {
        // 头像
        Column({ space: 8 }) {
          Image(this.img)  // 显示头像
            .width(64)
            .height(64)
            .borderRadius(32);
          Text(this.name).fontSize(18).borderStyle(BorderStyle.Solid);
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
            TextInput()


              .onChange((value: string) => {
                this.name = value;
              })
              .width(200)
              .padding(10);
          }.rowFancy();

          Row() {
            Text("电子邮箱").fontSize(15).globalFancy();
            TextInput()

              .onChange((value: string) => {
                this.email = value;
              })
              .width(200)
              .padding(10);
          }.rowFancy();

          Row() {
            Text("创建时间").fontSize(15).globalFancy();
            TextInput()

              .onChange((value: string) => {
                this.startday = value;
              })
              .width(200)
              .padding(10);
          }.rowFancy();

          Row() {
            Text("更新时间").fontSize(15).globalFancy();
            TextInput()

              .onChange((value: string) => {
                this.upday = value;
              })
              .width(200)
              .padding(10);
          }.rowFancy();

          Row() {
            Text("邮箱验证").fontSize(15).globalFancy();
            Text(ema.toString()).fontSize(15).borderStyle(BorderStyle.Solid).padding(10).layoutWeight(1);
          }.rowFancy();

          Button("保存").fontSize(18).padding(1).backgroundColor("#007BFF").fontColor("#FFFFFF").onClick(() => {
            this.saveProfile();
          });
          Row() {
            Text("上传句子").fontSize(18).padding(1).fontColor(Color.Gray);
            Image($r("app.media.ic_public_add_norm")).width(30).fillColor("#ff6d51dd").padding(1)
              .margin({ top: 20 }).onClick(() => {
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
    }.title('编辑个人信息').titleMode(NavigationTitleMode.Mini);
  }
}
