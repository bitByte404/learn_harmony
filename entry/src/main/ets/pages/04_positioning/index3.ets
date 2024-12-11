@Entry
@Component
struct Index {
  build() {
    Row() {
      Button('按钮')
      Text('我是文本')
        .fontSize(30)
        .margin({ bottom: 20 })// 相对于自己原来的位置 占位
        .offset({
          x: 0,
          y: 10
        })
      Text('更多')
    }
    .width(300)
    .margin({ top: 30 })
    .backgroundColor('#ccc')
  }
}