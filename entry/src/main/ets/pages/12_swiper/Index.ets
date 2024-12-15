@Entry
@Component
struct Index {
  build() {
    Column() {
      Swiper() {
        Text('我是第一页')
          .backgroundColor(Color.Yellow)
          .textAlign(TextAlign.Center)
        Text('我是第二页')
          .backgroundColor(Color.Orange)
          .textAlign(TextAlign.Center)
        Text('我是第三页')
          .backgroundColor(Color.Green)
          .textAlign(TextAlign.Center)

      }
      // 一旦Swiper设置宽高，子容器就会自适应拉伸
      .width('100%')
      .height(300)
      .index(2) // 默认显示哪一个
      .autoPlay(true) // 是否自动播放
      .loop(true) // 是否循环
      .interval(2000) // 自动轮播间隔
      // .vertical(true) // 纵向滑动
      .indicator(
        new DotIndicator()
          .itemWidth(15)
          .itemHeight(15)
          .selectedItemHeight(20)
          .selectedItemWidth(20)
          .color(Color.Pink)
          .selectedColor(Color.Red)
      )
      .displayArrow({
        showBackground: true,
        isSidebarMiddle: true,
        backgroundSize: 24,
        backgroundColor: Color.White,
        arrowSize: 18,
        arrowColor: Color.Blue
      })
    }
    .width('100%')
    .height('100%')
  }
}