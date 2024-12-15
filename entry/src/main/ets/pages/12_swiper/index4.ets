@Entry
@Component
struct Index {
  build() {
    Swiper() {
      Text('京东')
        .swiperText(Color.Yellow, '京东')

      Text('淘宝')
        .swiperText(Color.Blue, '淘宝')

      Text('拼多多')
        .swiperText(Color.Green, '拼多多')

      Text('得物')
        .swiperText(Color.Red, '得物')

    }
    .width('100%')
    .height(200)
  }
}

// 同一个组件，用了大量相同的样式
// 可以利用@Extend 对组件进行扩展
// 只能定义在全局
@Extend(Text)
function swiperText(color: ResourceColor, message: string) {
  .fontSize(50)
  .backgroundColor(color)
  .fontColor(Color.Orange)
  .fontWeight(FontWeight.Bold)
  .textAlign(TextAlign.Center)
  .onClick(() => {
    AlertDialog.show({
      message: message
    })
  })
}