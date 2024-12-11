@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Image($r('app.media.avatar'))
          .height(150)
          .borderRadius({
            topLeft: 8,
            topRight: 8
          })
        Column() {
          Text('磁力片。工厂直发磁力王。100片，尺寸7.5cm可兼磁力片。工厂直发磁力王。100片，尺寸7.5cm可兼')
            .lineHeight(18)
            .maxLines(2)
            .textOverflow({
              overflow: TextOverflow.Ellipsis
            })
          Text('￥ 87')
            .fontColor(Color.Red)
            .width('100%')
        }
        .padding(5)
      }
      .width(150)
      .borderRadius(8)
      .backgroundColor(Color.White)
      .margin(10)
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#ECECEC')
  }
}