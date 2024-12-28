// 标题(显示商品种类)
import { DEEP_GRAY, LIGHT_GRAY, MAIN_RED } from '../data/GoodData'

@Component
export default struct TitleCom {
  @Prop length: number

  build() {
    Row() {
      // 文字
      Stack({ alignContent: Alignment.Bottom }) {
        Text(`购物车(${this.length})`)
          .height('100%')
        Text('')
          .width(25)
          .height(2)
          .linearGradient({ angle: 90, colors: [[MAIN_RED, 0], [Color.White, 1]] })
      }
      .height('100%')

      // 地址
      Row() {
        Image($r('app.media.ic_yhd_location'))
          .width(15)
          .fillColor(DEEP_GRAY)
        Text('北京市昌平区建材城西路')
          .fontSize(12)
          .fontColor(DEEP_GRAY)
      }
      .height(20)
      .padding({ left: 5, right: 5 })
      .borderRadius(10)
      .backgroundColor(LIGHT_GRAY)

      // 编辑
      Text('编辑')
    }
    .padding({ left: 20, right: 20 })
    .width('100%')
    .height(40)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)
  }
}