@Entry
@Component
struct Index {
  @State isShow: boolean = false

  @Builder
  ContentDialog() {
    Column() {
      Row() {
        Text('温馨提示')
          .fontSize(24)
        Text('X')
          .fontSize(20)
          .onClick(() => {
            this.isShow = false
          })
      }

      Text(`${this.isShow}`)
        .fontSize(30)

      Text(`${this.isShow}`)
        .fontSize(30)

      Text(`${this.isShow}`)
        .fontSize(30)
    }
    .width('100%')
    // .height('100%')
    .backgroundColor(Color.Pink)
  }

  build() {
    Column() {
      Button('点我分享')// $$ 使得组件内的状态修改，也能同步到数据状态，形成双向联动
        // 1. 数据的变化 -> 界面的变化
        // 2. 界面的变化 -> 驱动数据的变化
        .bindSheet($$this.isShow, this.ContentDialog, {
          // height: 200 // 设置模态框高度
          // height: SheetSize.FIT_CONTENT, // 内容自适应
          // height: SheetSize.MEDIUM 设置大中小
          dragBar: true, // 和detents搭配使用
          detents: [SheetSize.LARGE, 500, SheetSize.FIT_CONTENT], // 设置滚动缩小档位
          showClose: false  // 关闭按钮的显示隐藏
        })
        .onClick(() => {
          this.isShow = true
        })
      Image($r('app.media.add'))
        .height(50)
    }
    .width('100%')
    .height('100%')
  }
}