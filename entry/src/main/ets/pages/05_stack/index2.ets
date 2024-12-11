@Entry
@Component
struct Index {
  build() {
    Stack({
      alignContent: Alignment.Bottom
    }) {
      Column() {

      }
      .height('100%')
      .width('100%')
      .backgroundColor('#ccc')

      Row() {
        Image($r('app.media.footer'))
      }
      .width('100%')
      .height(50)
      .backgroundColor(Color.White)
    }
    .height('100%')
    .width('100%')
  }
}