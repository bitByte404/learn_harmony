@Entry
@Component
struct Index {
  build() {
    Stack({
      // 配置内容的对齐方式
      alignContent: Alignment.Top
    }) {
      Column() {
      }
      .width(200)
      .height(200)
      .backgroundColor(Color.Orange)

      Image($r('app.media.avatar'))
        .width(100)

      Button('按钮')
        .width(50)
    }
    .height('100%')
    .width('100%')
  }
}