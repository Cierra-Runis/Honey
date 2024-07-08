// AboutPage.ts
import router from '@ohos.router'
import web_webview from '@ohos.web.webview';
import common from '@ohos.app.ability.common';

@Entry
@Component
export struct AboutPage {
  private appInfo = {
    icon: $r('app.media.logo'),
    version: '1.0.0',
    description: "　　动漫也好，小说也好，网络也好，不论在哪里，我们总会看到有那么一两个句子能穿透你的心。我们把这些句子汇聚起来，形成一言网络，以传递更多的感动",
    repoUrl: 'https://github.com/Cierra-Runis/Honey'
  }
  private authors = [
    { id: 29329988, username: 'Cierra-Runis' },
    { id: 95724796, username: 'alala5042' },
    { id: 105626670, username: 'Sharrowi' },
    { id: 97162916, username: 'spdayday' },
    { id: 174721252, username: 'WYM200411' },
    { id: 91953735, username: 'zhoujielong' },
    { id: 143326510, username: 'zudashou' },
    { id: 105626765, username: 'zzzwh1111' }
  ]

  build() {
    Navigation() {
      Column({ space: 8 }) {

        Column() {

          Image(this.appInfo.icon).width(100).height(100).margin(16)
          Text('版本号：' + this.appInfo.version).margin(8)
          Text(this.appInfo.description).margin(8)


          GridRow({ columns: 4 }) {
            ForEach(this.authors, (item, index) => {
              GridCol() {
                Column() {
                  Image(`https://avatars.githubusercontent.com/u/${item.id}`).width(48).borderRadius(48 / 2)
                  Text(item.username).fontSize(12)
                }
              }
            })
          }

        }

        Button('跳转到 GitHub 仓库', { stateEffect: true })
          .onClick(async () => {
            let want = {
              "action": 'ohos.want.action.viewData',
              'entities': ['entity.system.browsable'],
              'url': this.appInfo.repoUrl,
              'type': 'text/plain'
            }
            let context = getContext(this) as common.UIAbilityContext
            await context.startAbility(want)
          })

      }.justifyContent(FlexAlign.SpaceEvenly).height('100%')
    }.title('关于').titleMode(NavigationTitleMode.Mini)
  }
}

