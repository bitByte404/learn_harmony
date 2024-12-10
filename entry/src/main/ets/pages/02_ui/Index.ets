@Entry
@Component
struct Index {
  build() {
    Column({
      space: '4'
    }) {
      Text('阿伟，一个客户端全栈开发工程师')
        .fontSize(18)
      Row({
        space: '8'
      }) {
        Text('置顶')
          .fontColor('#d0544c')
        Text('新华社')
          .fontColor('#777')
        Text('4680评论')
          .fontColor('#777')
      }
    }
    .alignItems(HorizontalAlign.Start)
  }
}