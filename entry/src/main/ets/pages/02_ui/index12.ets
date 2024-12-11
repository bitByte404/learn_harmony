@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {

      }
      .shadow({
        radius: 20,
        color: Color.Green,
        offsetX: 20,
        offsetY: 20
      })
      .width(200)
      .height(300)
      .backgroundColor(Color.White)
      .borderRadius(10)
      .margin({
        top: 10
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffffe2c8')
  }
}