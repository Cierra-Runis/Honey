import picker from '@ohos.file.picker';
import fs from '@ohos.file.fs';
import request from '@ohos.request';
import http from '@ohos.net.http';

// 定义类型
interface UploadResponse {
  body: string
}

export interface Response {
  /**
   * 业务状态码
   */
  code: number;

  /**
   * 响应数据
   */
  data: Data;

  /**
   * 响应消息
   */
  message: string;
}

/**
 * 响应数据
 */
export interface Data {
  /**
   * 上传成功的图片-在线地址
   */
  url: string;
}


// 实例化 选项对象
const photoSelectOptions = new picker.PhotoSelectOptions();
// 过滤选择媒体文件类型为IMAGE
photoSelectOptions.MIMEType = picker.PhotoViewMIMETypes.IMAGE_TYPE;
// 选择媒体文件的最大数目
photoSelectOptions.maxSelectNumber = 1;

@Entry
@Component
struct Page03_uploadImg {

  @State img :string =''

  build() {
    Navigation() {

      Column() {
        Text("点击下方按钮选择并上传头像").fontSize(18).padding(15).fontColor(Color.Black)
        Image(this.img)
          .width(128)
          .height(128)
          .borderRadius(64)
          .margin(10)
        Button('选择并上传头像')
          .fontSize(18).padding(15)
          .backgroundColor(Color.Blue).fontColor(Color.White)
          .borderRadius(5).margin({ top: 20 })
          .onClick(() => {
            // 创建 图片选择对象
            const photoViewPicker = new picker.PhotoViewPicker();
            // 调用 select 方法，传入选项对象
            photoViewPicker.select(photoSelectOptions)
              .then(res => {
                const uri = res.photoUris[0]
                // 因为只选了一张
                // AlertDialog.show({ message: '图片路径为:' + uri })

                // 三、拷贝文件到缓存目录
                // 将文件保存到缓存目录(只能上传在缓存目录中的文件)
                const context = getContext(this)
                const fileType = 'jpg'
                // 生成一个新的文件名
                const fileName = Date.now() + '.' + fileType
                // 通过缓存路径+文件名 拼接出完整的路径
                const copyFilePath = context.cacheDir + '/' + fileName

                // 将文件 拷贝到 临时目录
                const file = fs.openSync(uri, fs.OpenMode.READ_ONLY)
                fs.copyFileSync(file.fd, copyFilePath)

                // 四、上传图片
                // 上传文件
                let files: Array<request.File> = [
                // internal://cache/ 固定的
                // name 和接口文档的要求对上
                  { filename: fileName, type: fileType, name: 'img', uri: `internal://cache/${fileName}` }
                ]

                request.uploadFile(context, {

                  url: '你的url 地址', // url 地址

                  method: http.RequestMethod.POST, // 请求方法
                  header: {
                    // 和接口文档的要求的格式对象
                    contentType: 'multipart/form-data',
                  },
                  files, // 文件信息
                  data: [] // 额外提交的数据，不能省略
                })
                  .then((res => {
                    // 获取响应的内容
                    res.on('headerReceive', (value) => {
                      const uploadRes = (value as UploadResponse)
                      const response = JSON.parse(uploadRes.body) as Response
                      AlertDialog.show({
                        message: '图片上传成功，图片地址为：' + response.data.url
                      })
                      this.img = response.data.url
                    })
                  }))
              })
          })
      }
    }
    .titleMode(NavigationTitleMode.Mini)
    .title('上传头像')
  }
}
