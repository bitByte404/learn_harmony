@Entry
@Component
struct ScrollPage {
  @State message: string = 'Hello World';

  build() {
    // Scroll 滚动容器
    // 1. Scroll要有大小
    // 2. 内容超出Scroll的范围
    Scroll() {
      Row({ space: 20 }) {
        Row() {
          Text('我是内容')
            .fontSize(30)
        }.width('100%').height(200).border({ width: 2 })

        Row() {
          Text('我是内容')
            .fontSize(30)
        }.width('100%').height(200).border({ width: 2 })


        Row() {
          Text('我是内容')
            .fontSize(30)
        }.width('100%').height(200).border({ width: 2 })


        Row() {
          Text('我是内容')
            .fontSize(30)
        }.width('100%').height(200).border({ width: 2 })


        Row() {
          Text('我是内容')
            .fontSize(30)
        }.width('100%').height(200).border({ width: 2 })

      }
      .height('100%')
    }
    // .scrollBar(BarState.On)
    // .scrollBar(BarState.Off)
    .scrollBar(BarState.Auto)
    // .edgeEffect(EdgeEffect.Fade)
    .edgeEffect(EdgeEffect.Spring)
    .scrollable(ScrollDirection.Horizontal)
  }
}

