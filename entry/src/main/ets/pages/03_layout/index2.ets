import { IconGroupSuffix } from '@ohos.arkui.advanced.ChipGroup'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Text().width(50).height(50)
          .border({ width: 1 })
          .backgroundColor(Color.Orange)

        Text().width(50).height(50)
          .border({ width: 1 })
          .backgroundColor(Color.Orange)

        Text().width(50).height(50)
          .border({ width: 1 })
          .backgroundColor(Color.Orange)
      }
      // Start Center End
      // SpaceBetween 两端对齐，剩余元素平均间隙
      // .justifyContent(FlexAlign.SpaceBetween)
      // SpaceAround 间隙环绕子元素 靠墙只有一半间隙
      // .justifyContent(FlexAlign.SpaceAround)
      // SpaceEvenly 均分间隙
      .justifyContent(FlexAlign.SpaceEvenly)
      .width(300)
      .height(400)
      .border({
        width: 2
      })
      .margin(20)
    }
  }
}