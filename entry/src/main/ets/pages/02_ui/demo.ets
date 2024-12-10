@Entry
@Component
struct Index {
  build() {
    // 图片显示控制
    Column({
      space: '8'
    }) {
      Image($r('app.media.img'))
        .width('25%')
      Text('第十县令')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
      Text('202万字')
        .fontColor(Color.Grey)
        .fontSize(12)
      Text('兵荒马乱的世道，赵康一朝穿越成乾国九品县令。胸无大志的他并不想争霸天下，只想当个混吃等死，为非作列的土皇帝。于是，在元江县出现了许多奇奇怪怪的东西，老八洗浴城、二狗麻将馆、张三养生店...直到有一天女帝微服私访元江')
        .fontColor(Color.Grey)
        .fontSize(18)
        .lineHeight(40)
        .maxLines(4)
        .textOverflow({
          overflow: TextOverflow.Ellipsis
        })
        .textIndent(18 * 2) // 设置首行缩进
    }
    .width('100%')
    .height('100%')
  }
}