import { HomePage } from './HomePage'
import { MorePage } from './MorePage'

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