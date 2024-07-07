
import router from '@ohos.router';
class User {
  creator: string;
  from: string;
  from_who: string|null;// 可以是字符串或者null
  hitokoto: string;
  created_at: string;  // 使用字符串表示日期时间
  length : number;

  constructor( creator: string,  from: string, from_who: string|null, hitokoto: string,
               created_at: string, length : number) {
    this.creator = creator;
    this.from = from;
    this.from_who = from_who;
    this.hitokoto = hitokoto;
    this.length = length;
    this.created_at = created_at;
  }
}

@Entry
@Component

struct UploadPage {
  @State message: string = 'Hello World'

  build() {

    Stack({ alignContent: Alignment.Bottom }) {
      //主体展示区
      Stack({ alignContent: Alignment.Top }) {
        //头部
        Row() {

        }
        .width('100%')
        .height(200)
        .backgroundImage($r('app.media.1'))
        .backgroundImageSize(ImageSize.Cover)
        .zIndex(666)
        //主体
        Scroll() {
          Column({ space: 15 }) {
            TextArea({
              placeholder: '请输入句子内容'
            }).height(150)
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            TextArea({
              placeholder: '请输入句子来源'
            }).height(150)
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            TextArea({
              placeholder: '请输入句子作者'
            }).height(150)
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            TextArea({
              placeholder: '请输入创建时间'
            }).height(150)
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            TextArea({
              placeholder: '请输入句子类型'
            }).height(150)
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            TextArea({
              placeholder: '请输入句子长度'
            }).height(150)
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            Button('提交')
              .width('80%')
              .onClick(() => {
                router.pushUrl({url: "pages/UserUploadPage" })
              })
            Row({ space: 100 }) {
              Text('返回').onClick(() => {
                 router.pushUrl({url: "pages/ProfilePage" })
              })
              Text('保存').onClick(() => {
                AlertDialog.show({
                  message: '保存成功'
                })
              })
            }
          }
          .width('100%')
          .padding({ top: 220 , bottom:60 })
        }
      }
      .width('100%')
      .height('100%')

    }.backgroundColor('#32cd')
    .width('100%')
    .height("100%")
  }
}
