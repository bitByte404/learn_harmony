@Entry
@Component
struct Index {
  build() {
    Column() {
      Text()
        .width(300)
        .height(100)
        .border({ width: 2 })
        .margin(30)
        .linearGradient({
          // angle: 90, // 和direction选一个就行
          direction: GradientDirection.Left,
          colors: [
            [Color.Red, 0.1],
            [Color.Yellow, 0.5],
            [Color.Orange, 0.8]],
          // repeating: true
        })

      Text('去北京')
        .textAlign(TextAlign.Center)
        .borderRadius(5)
        .width(120)
        .height(40)
        .linearGradient({
          angle: 90,
          colors: [
            ['#ffffe2c8', 0],
            ['#ffe6af8a', 1]
          ]
        })

      Text('去北京')
        .textAlign(TextAlign.Center)
        .borderRadius(5)
        .width(300)
        .height(300)
        .radialGradient({
          center: [
            150, 150
          ],
          radius: 150,
          colors: [
            [Color.Red, 0],
            [Color.Yellow, 0.9]
          ],
          // repeating: true
        })
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#CCCCCC')
  }
}