@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        Column() {
          Image($r('app.media.wechat'))
            .height(30)
          Text('微信')
            .fontSize(16)
        }
        .layoutWeight(1)

        Column() {
          Image($r('app.media.contact'))
            .height(30)
          Text('通讯录')
            .fontSize(16)
        }
        .layoutWeight(1)

        Column() {
          Image($r('app.media.find'))
            .height(30)
          Text('发现')
            .fontSize(16)
        }
        .layoutWeight(1)

        Column() {
          Image($r('app.media.mine'))
            .height(30)
          Text('我')
            .fontSize(16)
        }
        .layoutWeight(1)
      }
      .padding(8)
      .backgroundColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.End)
    .backgroundColor('#CFCFCF')
  }
}