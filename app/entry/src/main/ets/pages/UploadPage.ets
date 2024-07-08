import promptAction from '@ohos.promptAction'
import http from '@ohos.net.http'
import router from '@ohos.router'
class User {
  from: string;
  from_who: string|null;// 可以是字符串或者null
  hitokoto: string;
  type: string;
  constructor(  from: string, from_who: string|null, hitokoto: string,type:string
  ) {

    this.from = from;
    this.from_who = from_who;
    this.hitokoto = hitokoto;
    this.type = type;
  }
}
@Entry
@Component
struct UploadPage {
  from: string="";
  from_who: string|null="";// 可以是字符串或者null
  hitokoto: string="";
  type: string='';
  @State menuSelected: Boolean = true
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
              .onChange((value)=>{
                this.hitokoto = value
              })
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            TextArea({
              placeholder: '请输入句子来源'
            }).onChange((value)=>{
              this.from = value
            }).height(150)
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            TextArea({
              placeholder: '请输入句子作者'
            }).onChange((value)=>{
              this.from_who = value
            }).height(150)
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            TextArea({
              placeholder: '请输入句子类型'
            }).onChange((value)=>{
              this.from_who = value
            }).height(150)
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            Button('提交')
              .width('80%')
              .onClick(() => {
                if(!this.hitokoto){
                  promptAction.showToast({message:'未输入句子'})
                  return
                }
                if(!this.from){
                  promptAction.showToast({message:'未输入句子来源'})
                  return
                }
                if(!this.type){
                  promptAction.showToast({message:'未输入句类型'})
                  return
                }
                this.sendUploadPage({hitokoto:this.hitokoto,from:this.from,from_who:this.from_who,type:this.type})
              })
            Row({ space: 100 }) {
              Text('返回').onClick(() => {
                router.pushUrl({url:'pages/ProfilePage'})
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

  async sendUploadPage(params:object){
    // 1.创建
    let httprequest = http.createHttp()

    await httprequest.request("https://127.0.0.1:8080",
      {
        method:http.RequestMethod.POST,
        extraData:params
      },
      (err,data)=>{
        if(!err)
        {
          if(JSON.parse(data.result.toString()).code == 10001)
            promptAction.showToast({message:'提交成功'})
          router.back()
        }
      }
    )
    // 3.销毁
    httprequest.destroy()

  }
}
