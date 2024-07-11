import ArrayList from '@ohos.util.ArrayList'
//import { Hitokoto } from '../models/Hitokoto';
import fetch from '@system.fetch'
import http from '@ohos.net.http';
import promptAction from '@ohos.promptAction';
import { Hitokoto, HitokotoResponse } from '../models/Hitokoto'
import { Constance } from '../commom/Constance';
import { Token } from '../commom/Token';
import { UserUploadResponse } from '../models/User';

export class BasicDataSource implements IDataSource {
  private listeners: DataChangeListener[] = [];
  private originDataArray: Hitokoto[] = []

  public totalCount(): number {
    return 0;
  }

  public getData(index: number): Hitokoto {
    return this.originDataArray[index];
  }

  // 该方法为框架侧调用，为LazyForEach组件向其数据源处添加listener监听
  registerDataChangeListener(listener: DataChangeListener): void {
    if (this.listeners.indexOf(listener) < 0) {
      console.info('add listener');
      this.listeners.push(listener);
    }
  }

  // 该方法为框架侧调用，为对应的LazyForEach组件在数据源处去除listener监听
  unregisterDataChangeListener(listener: DataChangeListener): void {
    const pos = this.listeners.indexOf(listener);
    if (pos >= 0) {
      console.info('remove listener');
      this.listeners.splice(pos, 1);
    }
  }

  // 通知LazyForEach组件需要重载所有子组件
  notifyDataReload(): void {
    this.listeners.forEach(listener => {
      listener.onDataReloaded();
    })
  }

  // 通知LazyForEach组件需要在index对应索引处添加子组件
  notifyDataAdd(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataAdd(index);
    })
  }

  // 通知LazyForEach组件在index对应索引处数据有变化，需要重建该子组件
  notifyDataChange(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataChange(index);
    })
  }

  // 通知LazyForEach组件需要在index对应索引处删除该子组件
  notifyDataDelete(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataDelete(index);
    })
  }
}

export class DataSource extends BasicDataSource{
  list: Hitokoto[] = []

  totalCount(){
    return this.list.length;
  }

  getData(index:number):Hitokoto {
    return this.list[index]
  }

  freshData(data: Hitokoto[]){
    this.list = data
    this.notifyDataReload()
  }
}

@Entry
@Component
struct UserUploadPage {

  private data: DataSource = new DataSource()

  aboutToAppear() {
    this.fetch()
  }

  async fetch() {
    try {
      let dio = http.createHttp();
      let response = await dio.request(
        `${Constance.baseUrl}/api/user/upload?userId=${Token.getUserId()}`,
        { header:{'authorization': `Bearer ${Token.getToken()}`} }
      )
      dio.destroy()

      let res  = JSON.parse(response.result.toString()) as UserUploadResponse

      this.data.freshData(res.hitokotos)
    } catch (e) {
      console.log(e);
      promptAction.showToast({ message: `错误 ${e}` });
    }
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

  @Builder
  itemLayout(_: Object, index: number): void {
    Text("测试数据" + index)
      .width("95%")
      .height(50)
      .margin(10)
      .textAlign(TextAlign.Center)
      .border({ width: 1, color: Color.Pink })
  }


  build() {
    Navigation() {
      List() {
        LazyForEach(this.data, item => {
          ListItem(){
            HitokotoItem({content:item})
          }
        })
      }
    }.title('我的投稿')
  }
}


@Component
struct HitokotoItem {
  content: Hitokoto;

  build() {
    Column({ space: 8 }) {
      Column() {
        Text('「').width('100%')
        Text(this.content.hitokoto)
        Row() {
          Text('」')
        }.width('100%').justifyContent(FlexAlign.End)
      }
    }.backgroundColor('#F8F8F8').borderRadius(12).padding(8).margin(8)
  }
}
