import { IconGroupSuffix } from '@ohos.arkui.advanced.ChipGroup'

@Entry
@Component
struct Index {
  build() {
    Column({ space: 20 }) {
      // 1. 两边固定，中间自适应
      Row() {
        Text('老大').backgroundColor(Color.Orange).width(30)
        Text('老二').backgroundColor(Color.Yellow).layoutWeight(1)
        Text('老三').backgroundColor(Color.Green).width(30)
      }
      .width('100%')

      // 2. 右边固定，左侧自定义
      Row() {
        Text('老大').backgroundColor(Color.Orange).width(30)
        Text('老二').backgroundColor(Color.Yellow).layoutWeight(1)
      }
      .width('100%')

      // 3. 按照份数，分配空间 如果有元素，有宽高、优先分配
      Row({ space: 20 }) {
        Text('老大').backgroundColor(Color.Orange).layoutWeight(1)
        Text('老二').backgroundColor(Color.Yellow).layoutWeight(1)
        Text('老三').backgroundColor(Color.Green).layoutWeight(1)
        Text('老四').backgroundColor(Color.Red).width(20)
      }
      .height(50)
      .width(300)
      .backgroundColor(Color.Pink)

    }
    .height('100%')
    .width('100%')
    .backgroundColor('#CBCBCA')
  }
}