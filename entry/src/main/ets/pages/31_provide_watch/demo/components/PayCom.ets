// 支付（最下方组件）
import { MAIN_RED } from '../data/GoodData'
import PriceCom from './PriceCom'

@Component
export default struct PayCom {
  @Link selectIds: string[]
  @Consume totalNum: number
  @Consume totalPrice: number

  build() {
    Row() {
      Row() {
        CheckboxGroup({
          group: 'cart'
        })
          .onChange((event) => {
            this.selectIds = event.name
            console.log('选中', JSON.stringify(event.name))
          })
          .selectedColor(MAIN_RED)

        Text('全选')
          .fontSize(12)
      }

      Row() {
        Text('合计:')
          .fontSize(14)
        PriceCom({
          fontColor: Color.Black,
          price: this.totalPrice
        })
        Button(`入会结算(${this.totalNum})`)
          .fontColor('#ffe3cc')
          .backgroundColor(Color.Black)
          .fontSize(14)
          .margin({ left: 5 })
      }

    }
    .justifyContent(FlexAlign.SpaceBetween)
    .padding({ left: 10, right: 10 })
    .height(48)
    .width('100%')
    .backgroundColor(Color.White)
  }
}