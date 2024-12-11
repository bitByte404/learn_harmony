@Entry
@Component
struct Index {
  build() {
    // 图片显示控制
    Column() {
      Image($r('app.media.ic_dream'))
        .width(100)
        .fillColor(Color.Red)
    }
  }
}