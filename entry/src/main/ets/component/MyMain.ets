@Component
@Preview
  // 可以预览界面，但是点击事件等不会显示
export default struct MyMain {
  @State count: number = 0

  build() {
    Column() {
      Text('我是内容')
        .fontSize(30)
        .fontColor(Color.White)
      Row() {
        Button('-')
          .onClick(() => {
            this.count--
          })
        Text(`${this.count}`)
        Button('+')
          .onClick(() => {
            this.count++
            this.count++
          })
      }
    }
    .layoutWeight(1)
    .backgroundColor(Color.Orange)
    .width('100%')
  }
}
