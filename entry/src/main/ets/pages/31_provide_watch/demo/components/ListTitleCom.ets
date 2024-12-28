// 列表区域标题：装饰用
import { DEEP_GRAY } from '../data/GoodData'

@Component
export default struct ListTitleCom {
  build() {
    Row({ space: 5 }) {
      Image($r('app.media.ic_yhd_logo'))
        .width(12)
      Text('自营')
        .fontWeight(600)
        .fontSize(15)
      Divider()
        .vertical(true)
        .height(10)
        .strokeWidth(2)
      Text('1号会员店提供服务')
        .fontColor(DEEP_GRAY)
        .fontSize(12)
    }
    .alignSelf(ItemAlign.Start)
    .padding({ left: 15, top: 10 })
  }
}