import { HomePage } from './HomePage'
import { MorePage } from './MorePage'
// 未编译成app貌似是不会储存到本地 无法测试...

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
        HomePage()
      }.tabBar($r('app.string.app_name'))

      TabContent() {
        MorePage()
      }.tabBar('我的')
    }
  }
}