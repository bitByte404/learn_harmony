@Entry
@Component
struct Index {
  @State list: number[] = Array.from({ length: 12 })

  // 演示合并操作
  build() {
    Column() {
      Grid() {
        ForEach(this.list, (item: number, index) => {
          if (index == 1) {
            // 合并处理
            GridItem() {
              Text(index.toString())
            }
            .columnStart(2)
            .columnEnd(4)
            .backgroundColor(Color.Pink)
          } else if (index == 2) {
            GridItem() {
              Text(index.toString())
            }
            .rowStart(2)
            .rowEnd(4)
            .backgroundColor(Color.Pink)
          } else if (index == 6) {
            GridItem() {
              Text(index.toString())
            }
            .columnStart(2)
            .columnEnd(4)
            .backgroundColor(Color.Pink)
          } else {
            GridItem() {
              Text(index.toString())
            }
            .backgroundColor(Color.Pink)
          }
        })
      }
      .width('100%')
      .height(400)
      .rowsGap(15)
      .columnsGap(15)
      .columnsTemplate('1fr 1fr 1fr 1fr')
      .rowsTemplate('1fr 1fr 1fr')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}