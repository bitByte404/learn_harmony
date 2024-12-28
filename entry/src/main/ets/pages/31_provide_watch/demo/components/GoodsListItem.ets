// 列表项：
import { CartGood, DEEP_GRAY, MAIN_RED } from '../data/GoodData'
import PriceCom from './PriceCom'

@Component
export default struct GoodsListItem {
  @ObjectLink item: CartGood

  build() {
    Row({ space: 10 }) {
      // 左
      Checkbox({
        group: 'cart',
        name: this.item.id
      })
        .shape(CheckBoxShape.CIRCLE)
        .selectedColor(MAIN_RED)


      // 右
      Row({ space: 8 }) {
        // 商品图片
        Image(this.item.good.imageurl)
          .width(90)
          .padding(5)
          .border({ width: .5, color: DEEP_GRAY })
          .borderRadius(10)
        //   信息
        Column() {
          // 标题
          Text(this.item.good.wname)
            .maxLines(2)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .fontSize(14)
            .fontWeight(400)
            .width('100%')
          // 价格 + 数量
          Row() {
            Column() {
              // 左
              Row() {
                Image($r('app.media.ic_yhd_hyj'))
                  .width(35)
                PriceCom({ price: this.item.good.jdPrice })
              }

              PriceCom({ discard: true, fontColor: DEEP_GRAY, price: this.item.good.jdMainPrice })
            }
            .alignItems(HorizontalAlign.Start)

            Blank()

            // 个数 Counter 内置组件
            Counter() {
              Text(`${this.item.count}`)
            }
            .onInc(() => {
              this.item.count++
            })
            .onDec(() => {
              if (this.item.count > 1) {
                this.item.count--
              }
            })

            .scale({ x: .8, y: .8 })
          }
          .justifyContent(FlexAlign.SpaceBetween)
          .width('100%')
        }
        .height(90)
        .justifyContent(FlexAlign.SpaceBetween)
        .layoutWeight(1)
      }
      .layoutWeight(1)
    }
    .padding({ left: 10, top: 10, bottom: 10 })

  }
}