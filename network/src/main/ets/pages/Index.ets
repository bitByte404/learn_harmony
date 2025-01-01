// 1. 导入http模块
import { http } from '@kit.NetworkKit'

// 2. 创建http请求对象
const req = http.createHttp()

@Entry
@Component
struct Index {
  @State text: string = ''
  build() {
    Column() {
      Text('笑话的内容：' + this.text)
      Button('获取笑话')
        .onClick(() => {
          // 3. 根据后端提供的请求地址/路径 - 发送请求，获取数据
          req.request('https://api-vue-base.itheima.net/api/joke')
            .then((res: http.HttpResponse) => {
              // 请求发送成功，执行.then中的代码
              // AlertDialog.show({
              //   message: '获取的内容' + JSON.stringify(res)
              // })
              // result的类型：string | Object | ArrayBuffer
              // 需要使用toString或者类型断言确定类型
              this.text = res.result.toString()
            })
        })
    }
    .height('100%')
    .width('100%')
  }
}