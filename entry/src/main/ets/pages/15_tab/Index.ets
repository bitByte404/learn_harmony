@Entry
@Component
struct Index {
  // Tabs的基本使用
  build() {
    Tabs() {
      TabContent() {
        Text('首页的内容')
          .fontSize(50)
      }
      .tabBar('首页')

      TabContent() {
        Text('军事的内容')
          .fontSize(50)
      }
      .tabBar('军事')

      TabContent() {
        Text('农业的内容')
          .fontSize(50)
      }
      .tabBar('农业')
    }
    .width('100%')
    .height('100%')
    // .vertical(true) // 纵向滑动
    // .barHeight(150)
    .barWidth(250)
    .scrollable(false) // 禁止滑动
    .barPosition(BarPosition.End)
  }
}