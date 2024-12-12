@Entry
@Component
struct ScrollExample {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Row() {
        Image($r('app.media.ic_huo'))
          .width(17)
        Text('近期热门')
      }
      .backgroundColor(Color.Orange)

      Scroll() {
        Row({ space: 25 }) {
          Text('必打卡')
          Text('必打卡')
          Text('必打卡')
          Text('必打卡')
          Text('必打卡')
          Text('必打卡')
          Text('必打卡')
          Text('必打卡')
          Text('必打卡')
        }
      }
      .scrollBar(BarState.Off)
      .layoutWeight(1)
      .edgeEffect(EdgeEffect.Spring)
      .scrollable(ScrollDirection.Horizontal)
    }
    .padding(12)
    .backgroundColor(Color.White)
    .width('100%')
  }
}