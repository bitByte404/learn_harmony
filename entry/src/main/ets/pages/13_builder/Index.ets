@Entry
@Component
struct Index {
  /// 定义在局部，不需要添加function关键字，可以访问到组件中的一些变量
  @Builder
  MyCard() {
    Row() {
      Text('我是卡片')
        .fontSize(30)
    }
    .width('100%')
    .height(200)
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.Center)
    .borderRadius(10)
    .onClick(() => {
      AlertDialog.show({
        message: '点击了卡片'
      })
    })
  }

  build() {
    Scroll() {
      Column({ space: 20 }) {
        MyHead()
        ForEach([1, 2, 3, 4, 5, 6], () => {
          this.MyCard()
        })
      }
      .width('100%')
    }
    .width('100%')
    .backgroundColor('#ccc')
    .height('100%')
    .padding(15)
  }
}

// 定义在外面，需要添加function关键字
@Builder
function MyHead() {
  Row() {

  }
  .width('100%')
  .backgroundColor(Color.Orange)
  .height(50)
}