@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Row() {
          Image($r('app.media.moco'))
            .width(200)
            .borderRadius({
              topLeft: 8,
              topRight: 8
            })
          Image($r('app.media.avatar'))
            .height(30)
            .position({
              top: 0,
              left: 0
            })
            .zIndex(0)
        }

        Row() {
          Text('飞狗MOCO')

        }.backgroundColor(Color.White)
        .width(200)
      }
      .borderRadius(10)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}