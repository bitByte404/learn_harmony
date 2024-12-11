@Entry
@Component
struct Index {
  build() {
    Column({
      space: 20
    }) {
      Image($r('app.media.avatar'))
        .width(200)
        .borderRadius(20)

      Text('胶囊按钮')// .align(Alignment.Center)
        .textAlign(TextAlign.Center)
        .height(50)
        .width(200)
        .fontColor(Color.White)
        .borderRadius(25)
        .backgroundColor(Color.Brown)

      Image($r('app.media.avatar'))
        .width(200)
        .borderRadius(100)

      Text('VIP')// .align(Alignment.Center)
        .textAlign(TextAlign.Center)
        .height(50)
        .width(100)
        .fontColor(Color.White)
        .borderRadius({
          topLeft: 25,
          bottomRight: 25
        })
        .backgroundColor(Color.Orange)

    }
    .alignItems(HorizontalAlign.Center)
    .width('100%')
    .height('100%')
  }
}