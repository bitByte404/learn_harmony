import { it } from '@ohos/hypium'

@Entry
@Component
struct Index {
  @State title: IconData[] =
    [
      { pic: 'app.media.ic_tabbar_icon_0', title: '首页' },
      { pic: 'app.media.ic_tabbar_icon_1', title: '新闻' },
      { pic: 'app.media.ic_tabbar_icon_2', title: '购物车' },
      { pic: 'app.media.ic_tabbar_icon_3', title: '个人' },
    ]
  @State currentIndex: number = 0

  @Builder
  tabTitleBuilder(pic: string, title: string, index: number) {
    Column({ space: 8 }) {
      Image($r(`${this.currentIndex == index ? `${pic}_selected` : pic}`))
        .width(30)
      Text('首页')
        .fontColor(this.currentIndex == index ? '#DEA861' : Color.Black)
        .fontWeight(this.currentIndex == index ? FontWeight.Bold : FontWeight.Normal)
    }
  }

  build() {
    Tabs() {
      ForEach(this.title, (item: IconData, index) => {
        TabContent() {
          Text(`${item.title}的内容`)
            .fontSize(50)
        }.tabBar(this.tabTitleBuilder(item.pic, `${item.title}`, index))
      })
    }
    .width('100%')
    .height('100%')
    .barHeight(70)
    .barPosition(BarPosition.End)
    .scrollable(false)
    .divider({ strokeWidth: 3, color: '#ccc' })
    // onChange不是实时触发，滚动完成触发
    // .onChange((index) => {
    //   this.currentIndex = index
    //   AlertDialog.show({
    //     message: `当前点击了${this.currentIndex}`
    //   })
    // })
    // 点击的时候，就立即触发 滑动不会触发
    .onTabBarClick((index) => {
      this.currentIndex = index
      // AlertDialog.show({
      //   message: `当前点击了${this.currentIndex}`
      // })
    })
  }
}

interface IconData {
  pic: string
  title: string
}