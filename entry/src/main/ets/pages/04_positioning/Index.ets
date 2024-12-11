@Entry
@Component
struct Index {
  build() {
    Column() {

      Column() {

      }
      .width(400)
      .height(200)
      .backgroundColor(Color.Pink)

      Column() {

      }
      .width(200)
      .height(200)
      .backgroundColor(Color.Orange)
      // 相对于父容器的左顶点定位
      // .position({ x: 0, y: 0 })
      .position({ right: 0, top: 10 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}