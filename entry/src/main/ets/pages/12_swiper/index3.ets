@Entry
@Component
struct Index {
  controller = new Scroller()

  build() {
    Scroll(this.controller) {
      Column({ space: 20 }) {
        Text('你好')
          .height(200)
          .width('100%')
          .backgroundColor(Color.Orange)

        Text('你好')
          .height(200)
          .width('100%')
          .backgroundColor(Color.Orange)

        Text('你好')
          .height(200)
          .width('100%')
          .backgroundColor(Color.Orange)


        Text('你好')
          .height(200)
          .width('100%')
          .backgroundColor(Color.Orange)

        Text('你好')
          .height(200)
          .width('100%')
          .backgroundColor(Color.Orange)


        Text('你好')
          .height(200)
          .width('100%')
          .backgroundColor(Color.Orange)


        Text('你好')
          .height(200)
          .width('100%')
          .backgroundColor(Color.Orange)


        Text('你好')
          .height(200)
          .width('100%')
          .backgroundColor(Color.Orange)

        Button('回到顶部')
          .onClick(() => {
            // this.controller.scrollTo({ xOffset: 0, yOffset: 0 })
            this.controller.scrollEdge(Edge.Top)
          })
      }
    }
    .width('100%')
    .height('100%')
  }
}