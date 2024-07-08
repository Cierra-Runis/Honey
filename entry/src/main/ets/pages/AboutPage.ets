// AboutPage.ts
import router from '@ohos.router'
@Entry
@Component
export struct AboutPage {
  private appInfo = {
    icon: $r('app.media.logo'),
    version: '1.0.0',
    description:"动漫也好,小说也好,网络也好,不论在哪里,我们总会看到有那么一两个句子能穿透你的心.我们把这些句子汇聚起来,形成一言网络,以传递更多的感动",
    repoUrl: 'https://github.com/yourrepo'
  }
  @Builder AppbarAction() {
    Row({ space: 8 }) {
      Button() {
        Image($r('app.media.ic_public_refresh')).width(20).margin(8)
      }.backgroundColor(Color.Transparent)

      Button() {
        Image($r('app.media.ic_public_refresh')).width(20).margin(8)
      }.backgroundColor(Color.Transparent)
    }.justifyContent(FlexAlign.End)
  }

  build() {
    Navigation() {
      Column({ space: 8 }) {
        Image(this.appInfo.icon).width(100).height(100).margin(16)
        Text('版本号: ' + this.appInfo.version).margin(8)
        Text(this.appInfo.description).margin(8)
        Button('跳转到 GitHub 仓库', { type: ButtonType.Normal, stateEffect: true })
          .onClick(()=>{
            router.pushUrl({
              url: this.appInfo.repoUrl
            })
          })
        }
    }.title('关于')
    .menus(this.AppbarAction())
  }
}

