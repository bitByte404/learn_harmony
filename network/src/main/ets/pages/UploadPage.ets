import { photoAccessHelper } from '@kit.MediaLibraryKit';
import fs from '@ohos.file.fs';
import { request } from '@kit.BasicServicesKit';
import { http } from '@kit.NetworkKit';

interface UploadResponse {
  body: string
}

interface Response {
  message: string
  data: ResponseUrl
}

interface ResponseUrl {
  url: string
}

@Entry
@Component
struct UploadPage {
  @State
  imgSrc: string = ''

  build() {
    Column() {
      Image(this.imgSrc)
        .width(100)
      Button('上传图片')
        .onClick(() => {
          // 实例化 选项对象
          const photoSelectOptions = new photoAccessHelper.PhotoSelectOptions();
          // 过滤选择媒体文件类型为IMAGE
          photoSelectOptions.MIMEType = photoAccessHelper.PhotoViewMIMETypes.IMAGE_TYPE;
          // 选择媒体文件的最大数目
          photoSelectOptions.maxSelectNumber = 1;

          // 创建 图片选择对象
          const photoViewPicker = new photoAccessHelper.PhotoViewPicker();
          // 调用 select 方法，传入选项对象
          photoViewPicker.select(photoSelectOptions).then(res => {
            // AlertDialog.show({ message: '图片路径为：' + res.photoUris[0] })
            // 1. 通过picker选择器 选取图片-获取图片路径
            // 2. 将图片转成缓存目录 (从缓存目录中完成上传功能)
            // 3. 完成上传功能

            const uri = res.photoUris[0]
            // 将文件保存到缓存目录(只能上传在缓存目录中的文件)
            const context = getContext(this)
            const fileType = 'jpg'
            // 生成新的文件名
            const fileName = Date.now() + '.' + fileType
            // 通过缓存路径 + 文件名 拼接出完整的路径
            const copyFilePath = context.cacheDir + '/' + fileName
            const file = fs.openSync(uri, fs.OpenMode.READ_ONLY)
            // 将文件拷贝到临时目录
            fs.copyFileSync(file.fd, copyFilePath)

            let files: Array<request.File> = [
              {
                filename: fileName,
                type: fileType,
                name: 'img',
                uri: `internal://cache/${fileName}`
              }
            ]

            request.uploadFile(context, {
              url: 'https://hmajax.itheima.net/api/uploadimg',
              method: http.RequestMethod.POST,
              header: {
                // 和接口文档的要求的格式对象
                contentType: 'multipart/form-data',
              },
              files, // 文件信息 对象中键和值同名的化可以省略key
              data: [] // 额外提交的数据
            })
              .then(res => {
                res.on('headerReceive', value => {
                  const uploadRes = value as UploadResponse
                  const response = JSON.parse(uploadRes.body) as Response
                  // AlertDialog.show({
                  //   message: `上传成功${response.data.url}`
                  // })
                  this.imgSrc = response.data.url
                })
              })
          })
        })
    }
    .height('100%')
    .width('100%')
  }
}