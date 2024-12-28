import ContentCom from '../components/ContentCom'
import PayCom from '../components/PayCom'
import TitleCom from '../components/TitleCom'
import { CartGood, goodList } from '../data/GoodData'
// 标题(显示商品种类)
import { LIGHT_GRAY } from '../data/GoodData'

@Entry
@Component
export default struct Main {
  @State list: CartGood[] = goodList
  // 1. 当双向同步后，底部的分组change的修改，能同步到父组件
  // 2. 底部分组的change，可以监听到：复选框的选中和取消选中 + 数据状态变化触发当前条目的重新渲染
  @State @Watch('calcFn') selectIds: string[] = []
  @Provide totalPrice: number = 0
  @Provide totalNum: number = 0

  calcFn() {
    this.totalPrice = 0
    this.totalNum = 0
    this.list.forEach((item) => {
      if (this.selectIds.includes(item.id)) {
        this.totalNum += item.count
        this.totalPrice += item.count * item.good.jdPrice
      }
    })
    console.log('测试', this.selectIds)
    console.log(`合计总数量：${this.totalNum} 合计总价：${this.totalPrice}`)
  }

  build() {
    Column() {
      // 标题
      TitleCom({
        length: this.list.length
      })
      // 内容
      ContentCom({
        list: this.list
      })
      // 支付
      PayCom({
        selectIds: this.selectIds
      })
    }
    .height('100%')
    .backgroundColor(LIGHT_GRAY)
  }
}

