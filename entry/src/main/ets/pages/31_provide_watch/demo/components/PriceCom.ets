// 价格（根据传入的价格渲染数字）
import { MAIN_RED } from '../data/GoodData'

@Component
export default struct PriceCom {
  @Prop price: number = 0
  fontColor: ResourceColor = MAIN_RED
  discard: boolean = false

  getSplicePrice() {
    return this.price.toFixed(2)
      .split('.')
  }

  build() {
    Text() {
      Span('¥')
        .fontSize(12)
      Span(this.getSplicePrice()[0]
        .toString())
        .fontSize(this.discard ? 12 : 16)
        .fontWeight(600)
      Span('.')
      Span(this.getSplicePrice()[1] == undefined ? '00' : this.getSplicePrice()[1])
        .fontSize(12)
    }
    .fontColor(this.fontColor)
    .decoration({ type: this.discard ? TextDecorationType.LineThrough : TextDecorationType.None })
  }
}