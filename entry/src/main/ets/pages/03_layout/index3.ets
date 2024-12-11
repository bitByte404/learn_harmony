import { IconGroupSuffix } from '@ohos.arkui.advanced.ChipGroup'

@Entry
@Component
struct Index {
  build() {
    Column({ space: 20 }) {
      Row() {
      }.width(100).height(100).backgroundColor(Color.Orange)

      Row() {
      }.width(100).height(100).backgroundColor(Color.Yellow)
      .alignSelf(ItemAlign.Center)

      Row() {
      }.width(100).height(100).backgroundColor(Color.Green)
    }
    .height('100%')
    .alignItems(HorizontalAlign.Start)
    .width('100%')
    .backgroundColor('#CBCBCA')
  }
}