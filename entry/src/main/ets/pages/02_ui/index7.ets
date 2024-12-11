@Entry
@Component
struct Index {
  build() {
    // 组件容器占据中间大小的组成部分
    Column() {
      Text('我是文本')
        .backgroundColor(Color.Pink)
        .width(200)
        .height(200)// .margin(
          //   10
          // )
        .margin({
          top: 30,
          left: 10,
          right: 20,
          bottom: 20,
        })
        .align(Alignment.Top)// .padding(10) // 四个方向设置相同的内边距
        .padding({
          // 给四个方向单独设置
          top: 10,
          left: 10
        })

      Text('测试')
        .backgroundColor(Color.Orange)
    }
  }
}