import { IconGroupSuffix } from '@ohos.arkui.advanced.ChipGroup'

@Entry
@Component
struct Index {
  build() {
    Row() {
      Image($r('app.media.back'))
        .height(50)
        .fillColor(Color.Grey)
      Text('个人中心')
      Image($r('app.media.more'))
        .height(30)
        .fillColor(Color.Grey)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .height(60)
  }
}