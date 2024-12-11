@Entry
@Component
struct Index {
  build() {
    Column() {
      // Flex中子元素超出父元素的宽，会压缩显示
      // 1. 默认会压缩显示
      // 2. 运行配置换行
      // 对于Flex也有主轴和交叉轴
      Flex({

        wrap: FlexWrap.Wrap,
        justifyContent: FlexAlign.Start
      }) {
        Text('ARKUI')
          .height(40)
          .backgroundColor(Color.White)
          .borderRadius(10)
          .textAlign(TextAlign.Center)
          .borderRadius(10)
          .padding(10)
          .margin({
            right: 10, bottom: 10
          })

        Text('Android')
          .height(40)
          .backgroundColor(Color.White)
          .borderRadius(10)
          .textAlign(TextAlign.Center)
          .borderRadius(10)
          .padding(10)
          .margin({
            right: 10, bottom: 10
          })

        Text('IOS')
          .height(40)
          .backgroundColor(Color.White)
          .borderRadius(10)
          .textAlign(TextAlign.Center)
          .borderRadius(10)
          .padding(10)
          .margin({
            right: 10, bottom: 10
          })

        Text('Uniapp')
          .height(40)
          .backgroundColor(Color.White)
          .borderRadius(10)
          .textAlign(TextAlign.Center)
          .borderRadius(10)
          .padding(10)
          .margin({
            right: 10, bottom: 10
          })

        Text('weApp')
          .height(40)
          .backgroundColor(Color.White)
          .borderRadius(10)
          .textAlign(TextAlign.Center)
          .borderRadius(10)
          .padding(10)
          .margin({
            right: 10, bottom: 10
          })

        Text('weApp')
          .height(40)
          .backgroundColor(Color.White)
          .borderRadius(10)
          .textAlign(TextAlign.Center)
          .borderRadius(10)
          .padding(10)
          .margin({
            right: 10, bottom: 10
          })
      }
    }
    .height('100%')
    .width('100%')
    .padding(8)
    .backgroundColor('#CCCCCC')
  }
}