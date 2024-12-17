@Entry
@Component
struct Index {
  topicScroller: ListScroller = new ListScroller()
  @State bannerList: BannerItem[] = [
    { imgUrl: $r('app.media.banner_01_1'), imgTitle: '谷歌杀入开源大模型，凭什么问鼎王座？' },
    { imgUrl: $r('app.media.banner_01_3'), imgTitle: '微软牵手OpenAI劲敌！Mistral顶级大模型不再开源' },
    { imgUrl: $r('app.media.banner_01_4'), imgTitle: '生成式AI会扼杀DevSecOps吗' },
    { imgUrl: $r("app.media.banner_01_2"), imgTitle: '微软继续Linux化！sudo原生命令强势登录Windows' },
  ]
  @State columnarList: ColumnarItem[] = [
    { iconUrl: $r('app.media.ic_01_1'), iconTitle: '内容精选' },
    { iconUrl: $r('app.media.ic_01_2'), iconTitle: '学堂' },
    { iconUrl: $r('app.media.ic_01_3'), iconTitle: '鸿蒙开发者社区' },
    { iconUrl: $r('app.media.ic_01_4'), iconTitle: '博客' },
    { iconUrl: $r('app.media.ic_01_5'), iconTitle: '企业培训' },
    { iconUrl: $r('app.media.ic_01_6'), iconTitle: 'Next训练营' },
    { iconUrl: $r('app.media.ic_01_7'), iconTitle: '精培' },
  ]
  @State recommendList: RecommendItem[] = [
    {
      imgUrl: $r('app.media.list_02_1'),
      title: '字节一面：TCP和UDP可以使用同一个端口号吗？',
      createTime: '2024-03-05 10:07:22'
    },
    {
      imgUrl: $r('app.media.list_02_2'),
      title: 'NoSQL：在高并发场景下，数据库和NoSQL如何做到互补？',
      createTime: '2024-03-05 10:03:17'
    },
    {
      imgUrl: $r('app.media.list_02_3'),
      title: '处理大规模并发请求时如何设计和优化Python后端服务的架构和性能',
      createTime: '2024-03-05 10:03:09'
    },
    {
      imgUrl: $r('app.media.list_02_4'),
      title: 'C++右值引用：解锁高效内存管理与性能优化的奥秘',
      createTime: '2024-03-05 09:55:00'
    },
    { imgUrl: $r('app.media.list_02_5'), title: '现代分布式系统架构的权衡分析', createTime: '2024-03-05 09:52:57' },
  ]
  scroller: Scroller = new Scroller()
  @State topicList: TopicItem[] = [
    {
      title: '开发',
      children: [
        { subTitle: '前端', total: '2.3w' },
        { subTitle: '后端', total: '2.5w' },
        { subTitle: '开发工具', total: '7181' },
        { subTitle: '游戏开发', total: '1001' },
        { subTitle: '项目管理', total: '608' },
        { subTitle: '架构', total: '2005' },
        { subTitle: 'VR/AR', total: '100' },
      ]
    },
    {
      title: '人工智能',
      children: [
        { subTitle: '机器学习', total: '2.3w' },
        { subTitle: '深度学习', total: '2.5w' },
        { subTitle: '算法', total: '7181' },
        { subTitle: '语音识别', total: '1001' },
        { subTitle: '人脸识别', total: '608' },
        { subTitle: '机器视觉', total: '2005' },
        { subTitle: '无人驾驶', total: '100' },
        { subTitle: '机器人', total: '100' },
      ]
    },
    {
      title: '云计算',
      children: [
        { subTitle: '云原生', total: '2.3w' },
        { subTitle: '混合云', total: '2.5w' },
        { subTitle: '分布式', total: '7181' },
        { subTitle: 'Laas', total: '1001' },
        { subTitle: 'Paas', total: '608' },
        { subTitle: 'Saas', total: '2005' },
        { subTitle: 'Kafka', total: '100' },
        { subTitle: '虚拟化', total: '100' },
      ]
    },
    { title: '开源' },
    {
      title: '网络',
      children: [
        { subTitle: '网络设备', total: '2.3w' },
        { subTitle: '通信技术', total: '2.5w' },
        { subTitle: '网络优化', total: '7181' },
        { subTitle: '网络管理', total: '1001' },
        { subTitle: '路由交换', total: '608' },
        { subTitle: '布线接入', total: '2005' },
      ]
    },
    {
      title: '大数据',
      children: [
        { subTitle: '数据分析', total: '2.3w' },
        { subTitle: '数据可视化', total: '2.5w' },
        { subTitle: '商业智能', total: '7181' },
        { subTitle: 'Spark', total: '1001' },
        { subTitle: '数据湖', total: '608' },
        { subTitle: '数据仓库', total: '2005' },
      ]
    },
    { title: '区块链' },
    { title: '服务器' },
    { title: '元宇宙' },
    { title: '原创' }
  ]
  @State isShowTopic: boolean = false

  @Builder
  MyHead() {
    Row() {
      Image($r('app.media.hot_01'))
        .width(60)
        .onClick(() => {
          this.scroller.scrollEdge(Edge.Top)
        })
      Row({ space: 15 }) {
        Image($r('app.media.user_01'))
          .width(20)
        Image($r('app.media.more_01'))
          .width(20)
          .bindContentCover($$this.isShowTopic, this.AllTopic())
          .onClick(() => {
            this.isShowTopic = true
          })
      }
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .height(56)
    .width('100%')
    .padding({ left: 28, right: 16 })
  }

  @Builder
  ListHeader(title: string) {
    Row({ space: 10 }) {
      Image($r('app.media.ic_03_title'))
        .height(22)
      Text(title)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
    }
    .padding({
      left: 10,
      top: 10,
      bottom: 10
    })
    .width('100%')
    .backgroundColor('#ccc')
  }

  @Builder
  AllTopic() {
    Column() {
      Text('全部话题')
        .fontSize(35)
        .fontWeight(FontWeight.Bold)
        .padding({
          bottom: 10
        })

      Image($r('app.media.ic_public_cancel'))
        .height(25)
        .margin({ left: 5 })
        .position({ top: 0, right: 0 })
        .onClick(() => {
          this.isShowTopic = false
        })

      List({
        scroller: this.topicScroller
      }) {
        ForEach(this.topicList, (item: TopicItem) => {
          ListItemGroup({
            header: this.ListHeader(item.title)
          }) {
            ForEach(item.children, (sub: SubTopicItem) => {
              ListItem() {
                Row() {
                  Row({ space: 10 }) {
                    Image($r('app.media.ic_03_title'))
                      .height(18)
                    Text(sub.subTitle)
                      .fontSize(16)
                      .fontWeight(FontWeight.Bold)
                  }

                  Text(`${sub.total}内容`)
                    .fontColor(Color.Grey)
                    .fontSize(14)
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .padding({
                  left: 20,
                  top: 10,
                  bottom: 10,
                  right: 20
                })
                .width('100%')
              }
            })
          }
        })
      }
      .onScrollIndex((start: number) => {
        this.seletedTopic = start
      })
      .width('100%')
      .layoutWeight(1)

      AlphabetIndexer({
        arrayValue: this.flagList,
        selected: this.seletedTopic,
      })
        .position({
          right: 0,
          top: 200
        })
        .onSelect((index) => {
          this.seletedTopic = index
          this.topicScroller.scrollToIndex(this.seletedTopic)
        })
        .usingPopup(true)
    }
    .padding({
      top: 30
    })
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }

  @State seletedTopic: number = 0

  @Builder
  BannerItem(item: BannerItem) {
    Column() {
      Image(item.imgUrl)
        .width('100%')
      Text(item.imgTitle)
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
      ForEach(this.bannerList, (item: BannerItem) => {
        this.BannerItem(item)
      })
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
  TabBarBuilder(title: string, index: number) {
    if (index == 2) {
      Badge({
        count: 9,
        style: {
          badgeSize: 12,
          fontSize: 10,
          badgeColor: Color.Red,
        }
      }) {
        Text(title)
          .fontColor(index == this.selectedIndex ? Color.Black : Color.Grey)
          .fontWeight(index == this.selectedIndex ? FontWeight.Bold : FontWeight.Normal)
      }
    } else {
      if (index == 1) {
        Text(title)
          .fontColor(index == this.selectedIndex ? Color.White : Color.Grey)
          .fontWeight(index == this.selectedIndex ? FontWeight.Bold : FontWeight.Normal)
      } else {
        Text(title)
          .fontColor(index == this.selectedIndex ? Color.Black : Color.Grey)
          .fontWeight(index == this.selectedIndex ? FontWeight.Bold : FontWeight.Normal)
      }
    }
  }

  tabs: string[] = ['首页', '视频', '消息', '我的']

  @Builder
  ContentRow() {
    Grid() {
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

    // // 自定义滚动条
    // ScrollBar({
    //   scroller: this.scroller,
    //   direction: ScrollBarDirection.Horizontal,
    //   state: BarState.On
    // }) {
    //   Text()
    //     .width(20)
    //     .height(5)
    //     .borderRadius(10)
    //     .backgroundColor('#F64343')
    // }
    // .width(40)
    // .backgroundColor('#EDEDED')
    // .borderRadius(8)
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

  @Builder
  RecommendContentList() {
    ForEach(this.recommendList, (item: RecommendItem) => {
      Column({ space: 10 }) {
        Row() {
          Image(item.imgUrl)
            .height(80)
            .borderRadius(10)
          Column() {
            Text(item.title)
              .maxLines(2)
              .textOverflow({
                overflow: TextOverflow.Ellipsis
              })
              .width('100%')
            Text(item.createTime)
              .width('100%')
              .fontSize(13)
              .fontColor('#C2C4C4')
          }
          .layoutWeight(1)
          .justifyContent(FlexAlign.SpaceBetween)
          .height('100%')
          .margin({
            left: 8
          })
          .alignItems(HorizontalAlign.Start)
        }
        .height('100%')
        .width('100%')

        Divider()
          .backgroundColor('#F7F7F7')
          .width('100%')
          .height(2)
      }
      .height(110)
      .padding(15)
      .width('100%')
    })
  }

  @Builder
  TabItems() {
    ForEach(this.tabs, (item: string, index) => {
      TabContent() {
        if (index == 0) {
          Column() {
            this.MyHead()
            Scroll(this.scroller) {
              Column() {
                this.MySwiper()
                this.ContentRow()
                this.RecommendContentList()
              }
            }
            .scrollBar(BarState.Off)
            .padding({
              bottom: 60
            })
          }
          .width('100%')
          .height('100%')
        } else if (index == 1) {
          Image($r('app.media.zfb_tab_life'))
            .width('100%')
        } else {
          Text(item)
        }
      }
      .tabBar(this.TabBarBuilder(item, index))
    })
  }

  @State selectedIndex: number = 0
  @State flagList: string[] = ['开', '智', '云', '源', '网', '大', '区', '服', '元', '原']

  build() {
    Stack({
      alignContent: Alignment.Bottom
    }) {
      Image($r(this.selectedIndex != 1 ? 'app.media.bg_02_1' : 'app.media.bg_02_2'))
        .width('100%')

      Tabs({ barPosition: BarPosition.End }) {
        this.TabItems()
      }
      .onTabBarClick((index) => {
        this.selectedIndex = index
      })
      .scrollable(false)

      // .barBackgroundColor(this.selectedIndex == 1 ? Color.Black : Color.White)
    }
  }
}

interface BannerItem {
  imgUrl: ResourceStr,
  imgTitle: string
}

interface ColumnarItem {
  iconUrl: ResourceStr,
  iconTitle: string
}

interface RecommendItem {
  imgUrl: ResourceStr,
  title: string,
  createTime: string
}

interface TopicItem {
  title: string,
  children?: SubTopicItem[]
}

interface SubTopicItem {
  subTitle: string,
  total: string
}