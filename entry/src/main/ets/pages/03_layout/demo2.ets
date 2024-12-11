@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Image($r('app.media.dewu'))
          .width(200)
          .borderRadius({
            topLeft: 8,
            topRight: 8
          })

        Column() {
          Text('今晚吃这个 | 每日艺术分享')
            .fontWeight(FontWeight.Bold)
            .fontSize(14)
            .lineHeight(22)
            .width('100%')
          Text('No.43')
            .fontWeight(FontWeight.Bold)
            .fontSize(14)
            .lineHeight(22)
            .width('100%')
          Row() {
            Row({ space: 2 }) {
              Image($r('app.media.avatar'))
                .height(20)
                .borderRadius(10)
              Text('插画师分享聚集地')
                .fontColor(Color.Grey)
                .fontSize(12)
            }

            Row({ space: 2 }) {
              Image($r('app.media.like'))
                .height(16)
                .fillColor(Color.Grey)
              Text('2300')
                .fontColor(Color.Grey)
                .fontSize(12)
            }
            .justifyContent(FlexAlign.Center)
          }
          .margin({
            top: 8,
          })
          .justifyContent(FlexAlign.SpaceBetween)
          .width('100%')
        }
        .padding({
          bottom: 15,
          top: 5,
          left: 5,
          right: 5
        })
        .justifyContent(FlexAlign.SpaceEvenly)
      }
      .width(200)
      .shadow({
        radius: 8,
        color: Color.Grey
      })
      .borderRadius(8)
      .backgroundColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F3F3F3')
  }
}