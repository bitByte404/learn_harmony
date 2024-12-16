import { IconGroupSuffix } from '@ohos.arkui.advanced.ChipGroup'

@Entry
@Component
struct Index {
  scroller: Scroller = new Scroller()

  @Builder
  MyHead() {
    Row() {
      Image($r('app.media.hot_01'))
        .width(60)
      Row({ space: 15 }) {
        Image($r('app.media.user_01'))
          .width(20)
        Image($r('app.media.more_01'))
          .width(20)
      }
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .height(56)
    .width('100%')
    .padding({ left: 28, right: 16 })
  }

  @Builder
  BannerItem(img: string) {
    Column() {
      Image($r(img))
        .width('100%')
      Text('生成式AI会扼杀DevSecOps吗')
        .fontColor(Color.White)
        .fontWeight(FontWeight.Bold)
        .position({
          left: 10,
          bottom: 30
        })
    }
  }

  @Builder
  MySwiper() {
    Swiper() {
      this.BannerItem('app.media.banner_01_1')
      this.BannerItem('app.media.banner_01_2')
      this.BannerItem('app.media.banner_01_3')
      this.BannerItem('app.media.banner_01_4')
    }
    .indicator(
      new DotIndicator()
        .color(Color.Grey)
        .selectedColor(Color.White)
        .itemWidth(30)
        .itemHeight(5)
        .selectedItemWidth(30)
        .selectedItemHeight(5)
        .left(0)
    )
    .autoPlay(true)
    .width('100%')
  }

  @Builder
  ContentRow() {
    Grid(this.scroller) {
      this.IconContent('app.media.ic_01_1', '内容精选')
      this.IconContent('app.media.ic_01_2', '学堂')
      this.IconContent('app.media.ic_01_3', '鸿蒙开发社区')
      this.IconContent('app.media.ic_01_4', '博客')
      this.IconContent('app.media.ic_01_5', '企业培训')
      this.IconContent('app.media.ic_01_6', 'Next训练营')
      this.IconContent('app.media.ic_01_7', '精培')
    }
    // .width('100%')
    .rowsTemplate('1fr')
    .scrollBar(BarState.Off)
    .padding({
      left: 12,
      right: 12,
      top: 10,
      bottom: 10
    })
    .height(90)
    .columnsGap(24)

    // 自定义滚动条
    ScrollBar({
      scroller: this.scroller,
      direction: ScrollBarDirection.Horizontal,
      state: BarState.On
    }) {
      Text()
        .width(20)
        .height(5)
        .borderRadius(10)
        .backgroundColor('#F64343')
    }
    .width(40)
    .backgroundColor('#EDEDED')
    .borderRadius(8)
  }

  @Builder
  IconContent(img: string, title: string) {
    GridItem() {
      Column({ space: 6 }) {
        Image($r(`${img}`))
          .width(40)
        Text(`${title}`)
      }
    }
  }

  build() {
    Column() {
      this.MyHead()
      this.MySwiper()
      this.ContentRow()
    }
    .width('100%')
    .height('100%')
  }
}