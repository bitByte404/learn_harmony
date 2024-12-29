import { router } from '@kit.ArkUI'

@Entry
@Component
struct RegisterPage {
  build() {
    Column() {
      Text('注册页')
        .width('100%')

      Text('<')
        .fontSize(40)
        .onClick(() => {
          router.back()
        })
      Button('获取页面状态')
        .onClick(() => {
          console.log('页面状态：', JSON.stringify(router.getState()))
          //  {"index":2,"name":"RegisterPage","path":"pages/32_router/"}
          console.log('栈长度', router.getLength())
        })

      Button('清空栈')
        .onClick(() => {
          router.clear()
        })

      Button('去登陆')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/32_router/Index',
          })
        })
    }
    .width('100%')
    .height('100%')
  }
}