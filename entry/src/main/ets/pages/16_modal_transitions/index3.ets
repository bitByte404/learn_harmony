@Entry
@Component
struct Index {
  @State isShowSheet: boolean = false

  @Builder
  MySheet() {
    Column() {
      Text('选择城市')
      Button('关闭')
        .onClick(() => {
          this.isShowSheet = false
        })
    }
    .width('100%')
    .backgroundColor('#ccc')
    .height('100%')
  }

  build() {
    Column() {
      Button('选择城市')
        .bindContentCover($$this.isShowSheet, this.MySheet, {
          // 设置动画效果
          // modalTransition: ModalTransition.NONE  // 没有动画
          // modalTransition: ModalTransition.ALPHA // 淡入
          // ModalTransition: ModalTransition.DEFAULT
          // onWillDisappear: () => {
          //   AlertDialog.show({ message: '哥们，你真的要取消吗' })
          // }
        })
        .onClick(() => {
          this.isShowSheet = true
        })
    }
    .width('100%')
    .height('100%')
  }
}