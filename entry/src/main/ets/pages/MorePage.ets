import router from '@ohos.router'

@Entry
@Component
export struct MorePage {
  build() {
    Navigation() {

      Row({ space: 8 }) {
        Image($r('app.media.app_icon')).width(64)
        Column({ space: 4 }) {
          Text('未登录 / 用户名')
          Text('UUID').fontSize(12)
        }.alignItems(HorizontalAlign.Start)
      }.width('100%')
      .onClick(() => {
        router.pushUrl({ url: 'pages/LoginPage' })
      })
      .padding(16)

      List({ space: 8 }) {
        ListItem() {
          Text('我的投稿').width('100%')
        }.onClick(() => {
          router.pushUrl({ url: 'pages/UserUploadPage' })
        }).padding(16)

        ListItem() {
          Text('我的收藏').width('100%')
        }.onClick(() => {
          router.pushUrl({ url: 'pages/UserFavoritePage' })
        }).padding(16)

        ListItem() {
          Text('关于').width('100%')
        }.onClick(() => {
          router.pushUrl({ url: 'pages/AboutPage' })
        }).padding(16)
      }.backgroundColor("#FAFAFA").margin(16).borderRadius(8)

    }.title('我的')
  }
}