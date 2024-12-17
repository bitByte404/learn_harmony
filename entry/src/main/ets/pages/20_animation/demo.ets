@Entry
@Component
struct Index {
  @State x: number = 1
  @State y: number = 1

  build() {
    Column() {
      Text('全场低至一分购')
        .fontColor(Color.Red)
        .height(50)
        .width('70%')
        .borderRadius(20)
        .fontSize(25)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)// 组件挂载显示时监听
        .onAppear(() => {
          this.x = 1.2
          this.y = 1.2
        })
        .scale({
          x: this.x,
          y: this.y
        })
        .animation({
          curve: Curve.Linear,
          iterations: -1,
          duration: 500,
          playMode: PlayMode.Alternate,
        })
        .backgroundColor('#E8B66C')
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}