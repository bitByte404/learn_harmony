@Entry
@Component
struct Index {
  // 默认选中 0
  @State currentIndex: number = 0
  // 动画用属性
  @State toTopOpacity: number = 0
  @State toTopTranslateY: number = 0
  @State homeTranslateY: number = 0
  // 控制器
  mainScroller: Scroller = new Scroller()

  build() {
    Tabs({ barPosition: BarPosition.End, }) {
      TabContent() {
        Stack({ alignContent: Alignment.BottomEnd }) {
          Scroll(this.mainScroller) {
            Text('首页内容')
              .fontSize(30)
              .fullSize()
              .height(3000)
              .backgroundColor('#0094ff')
          }

          .onWillScroll(() => {
            if (this.mainScroller.currentOffset().yOffset > 300) {
              this.homeTranslateY = -25
              this.toTopOpacity = 1
              this.toTopTranslateY = -10
            } else {
              this.homeTranslateY = 0
              this.toTopOpacity = 0
              this.toTopTranslateY = 0
            }
          })
          .fullSize()


          Column() {
            Image($r('app.media.ic_public_arrow_up_0'))// ic_public_arrow_up_0
              .width(30)
              .margin({ top: -5, bottom: -5 })
              .fillColor(Color.Gray)
            Text('顶部')
              .fontSize(12)
              .fontColor(Color.Gray)
          }
          .translate({ y: this.toTopTranslateY })
          .onClick(() => {
            this.mainScroller.scrollEdge(Edge.Top)
          })
          .opacity(this.toTopOpacity)
          .width(40)
          .height(40)
          .backgroundColor(Color.White)
          .borderRadius(20)
          .animation({
            duration: 300
          })
          .offset({ x: -10, y: -40 })

        }

      }
      .tabBar(this.firstTabBuilder('首页', 0))

      this.secondTabBuilder()

      this.thirdTabBuilder()

      this.forthTabBuilder()
    }
    .width('100%')
    .height('100%')
    .barBackgroundColor('#ccc')
    .scrollable(false)
    .animationDuration(0)
    .onTabBarClick((index: number) => {
      this.currentIndex = index
    })
    .onChange((index: number) => {
      this.currentIndex = index
    })
  }

  @Builder
  forthTabBuilder() {
    TabContent() {
      Column() {
        Text('我的内容')
      }
      .fullSize()
      .backgroundColor('#007DFF')
    }
    .tabBar(this.tabBuilder('我的', 3, $r('app.media.mjyp_tabbar_icon_3_selected'), $r('app.media.mjyp_tabbar_icon_3')))
  }

  @Builder
  thirdTabBuilder() {
    TabContent() {
      Column() {
        Text('我的内容')
          .fontSize(30)
      }
      .justifyContent(FlexAlign.Center)
      .fullSize()
    }
    .tabBar(this.tabBuilder('我的', 2, $r('app.media.mjyp_tabbar_icon_2_selected'), $r('app.media.mjyp_tabbar_icon_2')))
  }

  @Builder
  secondTabBuilder() {
    TabContent() {
      Column() {
        Text('推荐内容')
          .fontSize(30)
      }
      .justifyContent(FlexAlign.Center)
      .fullSize()
    }
    .tabBar(this.tabBuilder('推荐', 1, $r('app.media.mjyp_tabbar_icon_1_selected'), $r('app.media.mjyp_tabbar_icon_1')))
  }

  @Builder
  tabBuilder(title: string, targetIndex: number, selectedImg: ResourceStr, normalImg: ResourceStr) {
    Column({ space: 5 }) {
      Image(this.currentIndex === targetIndex ? selectedImg : normalImg)
        .size({ width: 25, height: 25 })
      Text(title)
        .fontColor(this.currentIndex === targetIndex ? '#e1a858' : '#6B6B6B')
        .fontSize(12)
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
  }

  @Builder
  firstTabBuilder(title: string, targetIndex: number) {
    Column({ space: 5 }) {
      if (targetIndex === this.currentIndex) {
        Row() {
          Column() {
            Image($r('app.media.mjyp_tabbar_icon_0_1_selected'))
            Image($r('app.media.mjyp_tabbar_icon_0_selected'))
          }
          .translate({ y: this.homeTranslateY })
          .animation({
            duration: 300
          })
        }
        .size({ width: 25, height: 25 })
        .clip(true)

      } else {
        Image($r('app.media.mjyp_tabbar_icon_0'))
          .size({ width: 25, height: 25 })
      }

      Text(title)
        .fontColor(this.currentIndex === targetIndex ? '#e1a858' : '#6B6B6B')
        .fontSize(12)
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)

  }

  @Styles
  fullSize() {
    .width('100%')
    .height('100%')
  }
}