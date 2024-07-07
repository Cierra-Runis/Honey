import promptAction from '@ohos.promptAction'
import http from '@ohos.net.http'
import router from '@ohos.router'
@Entry
@Component
struct LoginPage {

  username:string = ''
  password:string = ''
  // 匹配字符串
  regExp:RegExp = new RegExp("^[a-zA-Z0-9-_]+$")

  @Builder top(){
    Column(){
      Image($r("app.media.logo")).width(150).margin({top:40})
    }
  }

  @Builder form(){
    Column(){
      Row(){
        Image($r("app.media.loginu")).width(25).margin({right:5,top:0})
        TextInput({placeholder:"用户名/邮箱/手机号"})
          .onChange((value)=>{
            this.username = value
          }).width(260).height(45)
          .backgroundColor($r('app.color.backgroud_white'))

      }

      Row(){
        Image($r("app.media.Key")).width(30).margin({right:5})
        TextInput({placeholder:"密码"}).type(InputType.Password)
          .onChange((value)=>{
            this.password = value
          }).width(260).height(45)
          .backgroundColor($r('app.color.backgroud_white'))
      }.margin({top:30})

      Button("登录").padding({left:100,right:100}).height(45).margin({top:0})
        .onClick(()=>{
          //前端验证
          if(this.username.length < 4)
          {
            promptAction.showToast({message:'用户名长度需大于4'})
            return
          }
          if(!(this.regExp.test(this.password)&&this.regExp.test(this.username)))
          {
            promptAction.showToast({message:'用户名和密码只能包括[a-zA-Z0-9-_]'})
            return
          }
          // 后端请求
          // let a = this.sendData({username:this.username,pwd:this.password})
          // a.then((data)=>{
          //   // if(code==10000){router.pushURL}
          //   // else:
          // })
          //   .catch()
          //   .finally()
          router.pushUrl({url:'pages/HomePage'})
        }).margin({top:30})

      Row(){
        Text("还没有注册?").fontColor("#ff0e8bca")
      }.margin({top:20,left:140})
      .onClick(()=>{
        router.pushUrl({url:'pages/RegisterPage'})
      })

    }.padding({left:20,right:20 }).margin({top:50})
  }

  @Builder loginCard(){
    Column(){
      this.top()
      this.form()
    }.width("90%").backgroundColor($r('app.color.backgroud_white')).height("70%").borderRadius(50)
  }

  async sendData(params:object){
    // 1.创建
    let httprequest = http.createHttp()

    let a = await httprequest.request("https://127.0.0.1:8080",{extraData:Object})
    return JSON.parse(a.result.toString())
    // 3.销毁
    httprequest.destroy()

  }

  build() {
    Column(){
      Stack(){
        Image($r("app.media.yiyanbackground"))
        Column(){
          this.loginCard()
        }
        .width("100%")
        .height("100%")
        .backgroundColor(Color.Transparent)
        .justifyContent(FlexAlign.SpaceEvenly)
      }
    }

  }
}