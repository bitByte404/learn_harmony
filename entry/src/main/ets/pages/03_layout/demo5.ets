@Entry
@Component
struct Index {
  build() {
    Row() {
      Row({ space: 4 }) {
        Column({ space: 15 }) {
          Text('第五个国际数学日，全世界和数据一起玩儿')
          Row() {
            Row({ space: 2 }) {
              Text('中国青年网')
                .fontSize(14)
                .fontColor(Color.Grey)
              Text('昨天')
                .fontSize(14)
                .fontColor(Color.Grey)
            }
            .layoutWeight(1)

            Image($r('app.media.cancel'))
              .height(20)
              .fillColor(Color.Grey)
          }
        }
        .layoutWeight(1)

        Image($r('app.media.mofang'))
          .width(100)
      }
      .padding(8)
      .margin(6)
      .shadow({
        color: Color.Grey,
        radius: 8
      })
      .borderRadius(4)
      .backgroundColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#CFCFCF')
  }
}