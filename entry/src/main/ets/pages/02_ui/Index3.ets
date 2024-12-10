@Entry
@Component
struct Index {
  build() {
    Column() {
      // 鸿蒙中，一般是多行文本，会用到行高
      Text(' Component is a ClassDecorator and it supports ComponentOptions as parameters.* @syscap SystemCapability.ArkUI.ArkUI.Full')
        .lineHeight(40) // 文字到下一行文字顶端的距离

      Text('阿伟')
        .fontSize(40)
        .decoration({
          type: TextDecorationType.Underline,
          color: Color.Red
        })

      Text('阿伟')
        .fontSize(40)
        .decoration({
          type: TextDecorationType.LineThrough,
          color: Color.Red
        })

      Text('阿伟')
        .fontSize(40)
        .decoration({
          type: TextDecorationType.Overline,
          color: Color.Red
        })

      Text('哈哈哈哈哈')
        .textAlign(TextAlign.Start)
        .backgroundColor(Color.Green)
        .width(300)
        .height(100)

      Text('大陈')
        .backgroundColor(Color.Yellow)
        .align(Alignment.TopStart)
        .width(300)
        .height(100)

      Text('Component is a ClassDecorator and it supports ComponentOptions as parameters.* @syscap SystemCapability.ArkUI.ArkUI.Full')// 首行缩进
        .textIndent(20 * 2)// 设置首行缩进
        .fontSize(20)

      // 文字溢出显示
      Text('Store Kit (应用市场服务) 帮助 HarmonyOS NEXT 生态伙伴实现应用和应用内数字商品的推荐、分发和应用内购买和交易。围绕开发者用户增长效率提升和应用内数字商品经营的收益提升，Store Kit 提供了降低用户获取应用时长的分发服务、提升用户获取应用更新体验的弹框更新引导服务、帮助用户购买数字商品的数字商品服务和应用内购买(In-App-Purchase)能力，帮助开发者实现高效分发和经营变现。')
        .maxLines(3)// 设置最大行数
        .textOverflow({
          overflow: TextOverflow.Ellipsis // 设置文字溢出效果 省略号效果
          // overflow: TextOverflow.Ellipsis // 设置文字溢出效果 跑马灯效果
        })
    }
  }
}