@Entry
@Component
struct Index {
  build() {
    // 组件容器占据中间大小的组成部分
    Column() {
      Row() {
      }
      .width(200)
      .height(100)
      .borderRadius(
        {
          topLeft: 4,
          topRight: 4,
          bottomLeft: 8,
          bottomRight: 10
        }
      )
      .border({
        width: {
          top: 3,
          right: 4,
          left: 4,
          bottom: 8
        },
        color: {
          top: Color.Blue,
          left: Color.Yellow
        },
        style: BorderStyle.Dashed
      })
    }
    .padding(10)
  }
}