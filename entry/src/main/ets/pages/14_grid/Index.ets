import List from '@ohos.util.List'

@Entry
@Component
struct Index {
  list: number[] = Array.from({ length: 30 }) // 快速生成数组

  build() {
    Column() {
      Grid() {
        ForEach(this.list, (item: number, index) => {
          GridItem() {
            Text(`${index}`)
              .fontSize(30)// .width(60)
              .height(60)
              .textAlign(TextAlign.Center)
          }
          .backgroundColor(Color.Orange)
          .border({
            width: 1
          })
        })
      }
      .width(300)
      .height(300)
      .backgroundColor(Color.Pink)
      .columnsTemplate('1fr 1fr 1fr') // 设置几列和比例
      // .rowsTemplate('1fr 1fr') // 设置几行以及对应比例
      .columnsGap(5) // 列间距
      .rowsGap(5) // 行间距
    }
    .width('100%')
    .height('100%')
  }
}