// 标题(显示商品种类)
import { DEEP_GRAY, LIGHT_GRAY, MAIN_RED } from '../data/GoodData'

// 运费（地址下方）
@Component
export default struct FreightCom {
  // 默认 69 可以由外部传入
  minPrice: number = 69.00
  @Consume totalPrice: number

  build() {
    Column() {
      if (this.totalPrice < this.minPrice) {
        // 运费不够 提示
        Row() {
          Row({ space: 5 }) {
            // 运费信息
            Row() {
              Text() {
                Span('还需凑钱 ')
                Span(`¥${(this.minPrice - this.totalPrice).toFixed(2)}`)
                  .fontColor(MAIN_RED)
                Span('可免运费')
              }
              .fontSize(13)

              Image($r('app.media.ic_yhd_order_info'))
                .width(15)
            }
          }

          // 按钮
          Button() {
            Row() {
              Text('去凑单')
                .fontColor(Color.White)
                .fontSize(12)
              Image($r('app.media.ic_public_arrow_right'))
                .height(14)
                .width(10)
                .fillColor(Color.White)
            }
            .backgroundColor(MAIN_RED)
            .borderRadius(20)
            .padding({
              left: 10,
              top: 3,
              bottom: 3,
              right: 2
            })
          }
        }
        .width('100%')
      } else {
        // 运费足够 提示
        Row({ space: 5 }) {
          Text('运费')
            .backgroundColor(MAIN_RED)
            .fontSize(12)
            .fontColor(Color.White)
            .padding(2)
            .borderRadius(3)
          Divider()
            .vertical(true)
            .height(12)
            .strokeWidth(2)
          Text('已免运费')
            .fontSize(12)
            .fontColor(Color.Gray)
          Image('/common/day08-10/yhd/ic_yhd_order_info.png')
            .width(15)

        }
      }
    }
    .borderRadius(5)
    .height(30)
    .padding({ left: 8, right: 8 })
    .linearGradient({ colors: [['#ffe8ea', 0], [Color.White, 1]] })
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}