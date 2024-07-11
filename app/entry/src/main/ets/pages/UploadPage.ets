import promptAction from '@ohos.promptAction'
import http from '@ohos.net.http'
import router from '@ohos.router'
import { HitokotoPostRequest,HitokotoResponse } from '../models/Hitokoto';
import { Constance } from '../commom/Constance';

@Entry
@Component
struct UploadPage {
  @State source: string = "";
  @State sourceWho: string | null = ""; // 可以是字符串或者null
  @State hitokoto: string = "";
  @State type: string = "";
  @State creatorId: number = 1;
  @State menuSelected: Boolean = true

  async  fetch(params) {
    try {
      let dio = http.createHttp();
      let response = await dio.request(`${Constance.baseUrl}/api/hitokoto`, {
        method: http.RequestMethod.POST,
        extraData: params
      })
      dio.destroy()

      let hitokotoResponse = JSON.parse(response.result.toString()) as  HitokotoResponse

      if (hitokotoResponse.hitokoto === undefined) {
        return promptAction.showToast({ message: '获取失败' });
      }

    } catch (e) {
      console.log(e)
      promptAction.showToast({ message: `错误 ${e}` })
    }

  }

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
            TextInput({
              placeholder: '请输入创建者ID'
            }).height(50)
              .onChange((value)=>{
                this.creatorId = parseInt(value)
              })
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
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
              this.source= value
            }).height(150)
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            TextArea({
              placeholder: '请输入句子作者'
            }).onChange((value)=>{
              this.sourceWho = value
            }).height(150)
              .width('90%')
              .backgroundColor('#fff')
              .borderRadius(25)
            TextArea({
              placeholder: '请输入句子类型'
            }).onChange((value)=>{
              this.type = value
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
                if(!this.source){
                  promptAction.showToast({message:'未输入句子来源'})
                  return
                }
                if(!this.type){
                  promptAction.showToast({message:'未输入句类型'})
                  return
                }
                let request :HitokotoPostRequest = {
                  hitokoto: this.hitokoto,
                  source: this.source,
                  sourceWho: this.sourceWho,
                  type: this.type,
                  creatorId: this.creatorId
                }
                this.fetch(request)
              })
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


