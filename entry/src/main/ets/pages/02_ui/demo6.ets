@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Text('漏洞处理流程')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)

        Text('华为PSIRT按照流动处理流程对上报的潜在漏洞进行处理')
          .fontSize(10)
          .fontColor(Color.White)
        Text('了解更多')
          .height(40)
          .fontColor(Color.White)
          .borderColor(Color.White)
          .padding(4)
          .borderWidth(1)
          .borderRadius(10)
      }
      .backgroundImage($r('app.media.avatar'))
      .backgroundImagePosition(Alignment.Center)
      .height(150)
      .width(350)
    }.height('100%')
    .width('100%')
    .backgroundColor('#ECECEC')
  }
}