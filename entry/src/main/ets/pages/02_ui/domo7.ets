@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Image($r('app.media.phone'))
          .width(150)

        Text('HUAWEI Mate X5')
          .fontWeight(FontWeight.Bold)
          .width('100%')
          .margin({
            top: 20
          })
        Text('￥12999起')
          .fontColor(Color.Grey)
          .fontSize(13)
          .margin({
            top: 30
          })
          .width('100%')
        Row() {
          Text('了解更多 >')
            .fontColor(Color.Grey)
            .fontSize(14)
          Text('购买 >')
            .margin({
              left: 10
            })
            .fontSize(14)
            .fontColor(Color.Grey)
        }
        .margin({
          top: 15
        })
        .width('100%')
      }
      .shadow({
        radius: 15
      })
      .width(200)
      .backgroundColor(Color.White)
      .borderRadius(10)
      .padding(8)
      .margin({
        top: 10
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffffe2c8')
  }
}