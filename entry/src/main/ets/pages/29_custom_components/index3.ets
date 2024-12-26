@Component
struct MyPanel {
  @State title: string = '大标题'
  @State more: string = '更多'
  callback = () => {
  }

  @Builder
  defaultBuilder() {

  }

  // 无参无返回值
  // 一般会给 BuilderParam 一个默认 Builder 保证组件不崩
  @BuilderParam content: () => void = this.defaultBuilder

  build() {
    Column({ space: 10 }) {
      Row() {
        Text(this.title)
        Blank()
        Text(this.more)
          .fontSize(12)
          .fontColor(Color.Grey)
          .onClick(this.callback)
        Text('>')
          .fontSize(12)
          .fontColor(Color.Grey)
      }
      .width('100%')
      .height(40)
      .padding({
        left: 5,
        right: 5
      })
      .border({ width: { bottom: 1 }, color: '#999' })

      this.content()
    }
    .layoutWeight(1)
    .height(150)
    .borderRadius(15)
    .backgroundColor(Color.White)
  }
}

@Entry
@Component
struct Index {
  @Builder
  swiperContent() {
    Swiper() {
      ForEach([1, 2, 3], (item: number, index) => {
        ListItem() {
          Text(`我是轮播图'${index + 1}`)
        }
        .height(80)
      })
    }
  }

  @Builder
  list() {
    List() {
      ForEach([1, 2, 3], () => {
        ListItem() {
          Text('我是列表')
        }
      })
    }
  }

  @Builder
  build() {
    Row({ space: 10 }) {
      MyPanel({
        title: '推荐',
        more: '查看全部',
        callback: () => {
          AlertDialog.show({
            message: '查看全部'
          })
        },
        content: this.swiperContent
      })
      MyPanel({
        title: '体验',
        more: '4条评测',
        callback: () => {
          AlertDialog.show({
            message: `显示4条评测`
          })
        }
      }) {
        // 如果只有一个 builderParam 直接在后面 { 结构 } // 尾随闭包
        // Row后面的{} 就是尾随闭包
        Button('点我')
      }
    }
    .width('100%')
    // .height('100%')
    .backgroundColor('#ccc')
    .padding(10)
  }
}