@Component
struct MyPanel {
  @State title: string = '大标题'
  @State more: string = '更多'
  callback = () => {

  }

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

      Text('默认内容')
        .fontSize(30)
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
  build() {
    Row({ space: 10 }) {
      MyPanel({
        title: '推荐',
        more: '查看全部',
        callback: () => {
          AlertDialog.show({
            message: '查看全部'
          })
        }
      })
      MyPanel({
        title: '体验',
        more: '4条评测',
        callback: () => {
          AlertDialog.show({
            message: `显示4条评测`
          })
        }
      })
    }
    .width('100%')
    // .height('100%')
    .backgroundColor('#ccc')
    .padding(10)
  }
}