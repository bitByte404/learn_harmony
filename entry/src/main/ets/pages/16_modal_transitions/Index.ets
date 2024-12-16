@Entry
@Component
struct Index {
  @State isShow: boolean = false

  @Builder
  ContentDialog() {
    Column() {
      Text('分享')
        .onClick(() => {
          this.isShow = false
        })
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Pink)
  }

  build() {
    Column() {
      Button('点我分享')// $$ 使得组件内的状态修改，也能同步到数据状态，形成双向联动
        // 1. 数据的变化 -> 界面的变化
        // 2. 界面的变化 -> 驱动数据的变化
        .bindSheet($$this.isShow, this.ContentDialog)
        .onClick(() => {
          this.isShow = true
        })
      Image($r('app.media.add'))
        .height(100)
    }
    .width('100%')
    .height('100%')
  }
}