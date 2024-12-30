@Entry
@Component
struct Index {
  build() {
    Row() {
      Column() {
        Text('蚂蚁森林')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}