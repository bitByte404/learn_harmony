@Entry
@Component
struct Index {
  build() {
    Column() {
      TextArea()
        .height(150)
        .maxLines(10)
        .backgroundColor(Color.Pink)
        .maxLength(10)
        .showCounter(true, {
          thresholdPercentage: 50, // 50的时候显示计数器
          highlightBorder: false // 红色边框
        }) // 需要和maxLength配合
    }
    .width('100%')
    .padding(10)
    .height('100%')
  }
}