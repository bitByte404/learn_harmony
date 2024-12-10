@Entry
@Component
struct Index {
  build() {
    Column() {
      Column({
        space: '8'
      }) {
        Image($r('app.media.shoes'))
          .width(200)
        Text('耐克龙年限定款')
          .fontColor(Color.Grey)
        Row() {
          Image($r('app.media.avatar'))
            .height(30)
            .borderRadius(15)
          Text('令人脱发的代码')
        }
      }
      .width(300)
      .alignItems(HorizontalAlign.Start)
    }
    .height('100%')
    .width('100%')
  }
}