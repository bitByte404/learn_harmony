import { router } from '@kit.ArkUI'

@Entry
@Component
struct LoginPage {
  @State username: string = ''
  @State password: string = ''

  build() {
    Column({ space: 20 }) {
      Text('淘宝')
        .fontSize(30)
        .fontColor(Color.Orange)
      TextInput({ placeholder: '请输入用户名', text: $$this.username })
      TextInput({ placeholder: '请输入密码', text: $$this.password })
      Button('登录')
        .onClick(() => {
          // 跳转(替换)
          router.replaceUrl({
            url: 'pages/32_router/HomePage',
            params: {
              username: this.username,
              password: this.password
            }
          })
        })

      Text('没有账号，点击注册')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/32_router/RegisterPage'
          })
        })
      Text('主题设置')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/32_router/ThemePage'
          }, router.RouterMode.Single)
        })
    }
    .width('100%')
    .height('100%')
  }
}