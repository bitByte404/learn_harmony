@Entry
@Component
struct Index {
  @State isShow: boolean = false
  @State x: number = 0
  @State y: number = 0

  build() {
    Column({ space: 100 }) {
      Button('切换弹窗')
        .onClick(() => {
          this.isShow = !this.isShow
        })
      Column() {

      }
      .height('200')
      .width('300')
      .backgroundColor('#ccc')
      .borderRadius(10)
      .opacity(this.isShow ? 1 : 0)
      .animation({})
      .translate({
        y: this.y
      })
      .onAppear(() => {
        animateTo({ duration: 200 }, () => {
          this.y = -50
        })
      })
      .onDisAppear(() => {
        this.y = 0
      })

      // .visibility(this.isShow ? Visibility.Visible : Visibility.Hidden)
    }
    .width('100%')
    .height('100%')
  }
}