import { List } from '@kit.ArkTS'

@Entry
@Component
struct Index {
  @State list: number[] = Array.from({ length: 30 })

  @Builder
  footBuilder() {
    Text('没有更多数据了')
  }

  build() {
    WaterFlow({
      footer: this.footBuilder()
    }) {
      ForEach(this.list, () => {
        FlowItem() {

        }
        .width('100%')
        .height(Math.random() * 200 + 200)
        .backgroundColor(Color.Orange)
        .border({ width: 2 })
      })
    }
    .columnsTemplate('1fr 1fr')
    .padding(10)
    .columnsGap(10)
    .rowsGap(10)
  }
}