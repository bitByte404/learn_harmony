@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('打车模块')
        .fontSize(30)
    }
    .width('100%')
    .height('100%')
  }
}