@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        Image($r('app.media.avatar'))
          .height(30)
          .borderRadius(15)
        Text('插画设计师')
          .margin({
            left: 6
          })
          .fontWeight(FontWeight.Bold)
          .layoutWeight(1)
        Text('关注')
          .fontColor(Color.Grey)
          .padding(5)
          .height(30)
          .border({
            width: 2,
            color: Color.Grey,
            radius: 4
          })
      }
      .padding(5)
      .height(50)
      .width('90%')
      .backgroundColor(Color.White)
      .margin(10)
      .shadow({
        radius: 10,
        color: Color.Grey
      })
      .borderRadius(4)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#CFCFCF')
  }
}