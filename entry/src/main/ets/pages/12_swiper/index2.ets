@Entry
@Component
struct Index {
  controller: SwiperController = new SwiperController()

  build() {
    Column() {
      Swiper(this.controller) {
        Image($r('app.media.ic_swiper_xmyp01'))
        Image($r('app.media.ic_swiper_xmyp02'))
        Image($r('app.media.ic_swiper_xmyp03'))
        Image($r('app.media.ic_swiper_xmyp04'))
      }
      .indicator(
        new DotIndicator()
          .itemHeight(5)
          .itemWidth(15)
          .selectedItemWidth(40)
          .color('#ccc')
          .selectedColor(Color.White)
      )
      .borderRadius(8)
      .margin(10)
      .autoPlay(true)
      .width('90%')
      .height(150)

      Button('下一页')
        .onClick(() => {
          this.controller.showNext()
        })
      Button('去第二页')
        .onClick(() => {
          this.controller.changeIndex(1, true)
        })
    }
    .width('100%')
    .height('100%')
  }
}



