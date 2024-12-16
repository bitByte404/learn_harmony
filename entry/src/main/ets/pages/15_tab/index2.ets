@Entry
@Component
struct Index {
  @State title: string[] = ['首页', '军事', '热门', '推荐', '数码', '八卦', '科技', '鬼畜', '英语']

  build() {
    Tabs() {
      ForEach(this.title, (item: string, index) => {
        TabContent() {
          Text(`${item}的内容`)
            .fontSize(50)
        }.tabBar(`${item}`)
      })
    }
    .width('100%')
    .height('100%')
    // .scrollable(false) // 禁止滑动
    .barWidth('90%')
    .barMode(BarMode.Scrollable)
  }
}