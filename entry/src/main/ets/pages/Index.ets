@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('小说简介')
      Row() {
        Text('都市')
          .backgroundColor(Color.Gray)
          .fontColor(Color.White)
        Text('生活')
          .backgroundColor(Color.Orange)
          .fontColor(Color.White)
        Text('情感')
          .backgroundColor(Color.Brown)
          .fontColor(Color.White)
        Text('男频')
          .backgroundColor(Color.Green)
          .fontColor(Color.White)
      }
    }
    .backgroundColor(Color.Pink)
    .alignItems(HorizontalAlign.Start)
    .width('50%')
    .height('50%')
  }
}