@Component
export default  struct MyHeader {
  @State title: string = '我是头部标题'

  build() {
    Row() {
      Text(this.title)
        .fontSize(30)
        .fontColor(Color.White)
    }
    .height(30)
    .backgroundColor(Color.Green)
    .width('100%')
  }
}