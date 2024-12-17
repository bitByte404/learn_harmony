@Entry
@Component
struct Index {
  @State color: ResourceColor = Color.Pink
  @State radius: number = 30
  @State x: number = 1
  @State y: number = 1

  build() {
    Column() {
      Button('修改元素的通用属性')
        .onClick(() => {
          this.color = Color.Orange
          this.radius = 100
          this.x = 1.2
          this.y = 1.2
        })
      Text('我是一个元素')
        .width(200)
        .height(200)
        .backgroundColor(this.color)
        .borderRadius(this.radius)
        .textAlign(TextAlign.Center)
        .scale({
          x: this.x,
          y: this.y
        })
        .animation({
          duration: 1000,
          // iterations: -1
          curve: Curve.Linear,
          iterations: -1,
          playMode: PlayMode.Alternate
        })
    }
    .width('100%')
    .height('100%')
  }
}