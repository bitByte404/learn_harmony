@Entry
@Component
struct Index {
  titles: string[] = ['首页', '购物', '添加', '消息', '我']
  @State currentIndex: number = 0

  @Builder
  MyTabItem(title: string, index: number) {
    if (index == 2) {
      Row() {
        Image($r('app.media.add'))
          .fillColor(Color.White)
          .height(20)
      }
      .backgroundColor(Color.Red)
      .width(46)
      .height(36)
      .borderRadius(10)
      .justifyContent(FlexAlign.Center)
    } else {
      Text(title)
        .fontSize(this.currentIndex == index ? 18 : 16)
        .fontWeight(this.currentIndex == index ? FontWeight.Bold : FontWeight.Normal)
        .fontColor(this.currentIndex == index ? Color.Black : Color.Grey)
    }
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, }) {
        ForEach(this.titles, (title: string, index) => {
          TabContent() {
            Text(`${title}的内容`)
          }
          .tabBar(this.MyTabItem(title, index))
        })
      }
      .onTabBarClick((index) => {
        this.currentIndex = index
      })
      .scrollable(false)
      .shadow({ radius: 6 })
      .height('100%')
      .width('100%')
      .barHeight(60)
    }
    .width('100%')
    .height('100%')
  }
}