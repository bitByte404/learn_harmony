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
        justifyContent: FlexAlign.SpaceBetween
      }) {
        Text().width(100).height(100).border({ width: 2 })
        Text().width(100).height(100).border({ width: 2 })
        Text().width(100).height(100).border({ width: 2 })
        Text().width(100).height(100).border({ width: 2 })
      }
    }
    .height('250')
    .width('300')
    .backgroundColor('#CBCBCA')
  }
}