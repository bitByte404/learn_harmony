@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Image($r('app.media.avatar'))
          .height(100)
          .borderRadius(50)
          .margin({
            bottom: 10
          })

        Text('大王叫我来巡山')
          .fontSize(17)
          .fontWeight(FontWeight.Bold)
          .margin({
            bottom: 40
          })
        Button('QQ登录')
          .width('100%')
          .margin({
            // left: 20,
            bottom: 10
          })
        Button('微信登录')
          .width('100%')
          .fontColor(Color.Black)
          .backgroundColor('#DCDCDC')
      }
      .margin(20)
    }
    .height('100%')
    .width('100%')
  }
}