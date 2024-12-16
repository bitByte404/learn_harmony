@Entry
@Component
struct Index {
  @State title: string[] = ['首页', '军事', '热门']

  @Builder
  tabTitleBuilder(pic: string, title: string) {
    Column({ space: 8 }) {
      Image($r(`${pic}`))
        .width(35)
      Text('首页')
    }
  }

  build() {
    Tabs() {
      ForEach(this.title, (item: string, index) => {
        TabContent() {
          Text(`${item}的内容`)
            .fontSize(50)
        }.tabBar(this.tabTitleBuilder(`app.media.ic_taobao_0${index + 6}`, `${item}`))
      })
    }
    .barBackgroundColor(Color.Orange)
    .width('100%')
    .height('100%')
    // .scrollable(false) // 禁止滑动
    // .barWidth('90%')
    .barHeight(70)
    .barPosition(BarPosition.End)
    // 分割线
    .divider({
      strokeWidth: 5,
      color: Color.Pink
    })

    // .barMode(BarMode.Scrollable)
  }
}