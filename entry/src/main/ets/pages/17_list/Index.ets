@Entry
@Component
struct Index {
  @Builder
  footerBuilder() {
    Row() {
      Text('底部')
    }
    .width('100%')
    .height(40)
    .backgroundColor(Color.Yellow)
  }

  @Builder
  headBuilder(title: string) {
    Row() {
      Text(title)
    }
    .width('100%')
    .height(40)
    .backgroundColor(Color.Green)
  }

  build() {
    List() {
      ListItem() {
        Text('城市选择')
          .fontSize(50)
      }
      .width('100%')
      .backgroundColor(Color.Orange)

      ListItemGroup({
        header: this.headBuilder('B'),
        // footer: this.footerBuilder
      }) {
        ForEach(['北京', '保定', '蚌埠'], (item: string) => {
          ListItem() {
            Text(item)
              .width('100%')
              .textAlign(TextAlign.Center)
              .fontSize(20)
          }
          .padding(20)
          .width('100%')
          .backgroundColor(Color.White)
        })
      }

      ListItemGroup({
        header: this.headBuilder('C'),
        // footer: this.footerBuilder
      }) {
        ForEach(['重庆', '常州', '滁州'], (item: string) => {
          ListItem() {
            Text(item)
              .width('100%')
              .textAlign(TextAlign.Center)
              .fontSize(20)
          }
          .padding(20)
          .width('100%')
          .backgroundColor(Color.White)
        })
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}