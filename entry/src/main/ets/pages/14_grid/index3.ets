@Entry
@Component
struct Index {
  scroller: Scroller = new Scroller()
  @State yOffset: number = 0

  build() {
    Column() {
      Scroll(this.scroller) {
        Column() {
          Image($r('app.media.ic_jd_scroll_01')).width('100%')
          Image($r('app.media.ic_jd_scroll_02')).width('100%')
          Image($r('app.media.ic_jd_scroll_03')).width('100%')
        }
        .width('100%')
      }
      .onWillScroll(() => {
        this.yOffset = this.scroller.currentOffset().yOffset
      })

      if (this.yOffset > 300) {
        Row() {
          Image($r('app.media.ic_jd_rocket'))
            .height(25)
        }
        .height(50)
        .width(50)
        .justifyContent(FlexAlign.Center)
        .backgroundColor(Color.White)
        .borderRadius(25)
        .shadow({
          radius: 6
        })
        .onClick(() => {
          this.scroller.scrollTo({
            xOffset: 0,
            yOffset: 0,
            animation: true
          })
        })
        .position({ bottom: 10, right: 10 })
      }
    }
    .width('100%')
    .height('100%')
  }
}