// 空车：购物车为空显示
@Component
export default struct EmptyCom {
  build() {
    Column({ space: 20 }) {
      Image($r('app.media.ic_yhd_cart_empty'))
        .width(90)
      Text('购物车竟然是空的~')
        .fontSize(14)
        .fontColor(Color.Gray)
    }
    .width('100%')
    .backgroundColor(Color.White)
    .padding(50)

  }
}