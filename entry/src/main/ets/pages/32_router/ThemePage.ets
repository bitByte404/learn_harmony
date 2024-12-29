import { router } from '@kit.ArkUI'

@Entry
@Component
struct ThemePage {
  build() {
    Column() {
      Text('主题页面')
        .fontSize(30)
      Button('去首页')
        .onClick(() => {
          router.replaceUrl({
            url: 'pages/32_router/Index'
          }, router.RouterMode.Single)
        })
    }
    .height('100%')
    .width('100%')
  }
}