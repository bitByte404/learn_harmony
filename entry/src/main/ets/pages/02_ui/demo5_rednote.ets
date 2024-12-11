@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Text('我是文本')
          .fontSize(20)
      }
      .width(300)
      .height(300)
      .backgroundImageSize({
        width: 100,
      })
      .backgroundImagePosition({
        x: 123,
        y: 100
      })
      .backgroundColor(Color.Pink)
      .backgroundImage($r('app.media.avatar'), ImageRepeat.NoRepeat)
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#ECECEC')
  }
}