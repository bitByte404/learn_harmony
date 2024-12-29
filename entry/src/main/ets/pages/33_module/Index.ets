import { router } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  build() {
    Column({
      space: 20
    }) {
      Text('支付模块-首页导航')
        .fontSize(30)
      Row() {
        Button('转账')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/33_module/payothers'
            })
          })
        Button('收款')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/33_module/getmoney'
            })
          })
      }

      Button('去社区')
        .width('100%')
        .backgroundColor(Color.Orange)
    }
    .width('100%')
    .height('100%')
  }
}