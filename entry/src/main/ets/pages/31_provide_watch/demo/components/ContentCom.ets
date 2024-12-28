// 内容区域
import { CartGood, DEEP_GRAY } from '../data/GoodData'
import EmptyCom from './EmptyCom'
import FreightCom from './FreightCom'
import GoodsListItem from './GoodsListItem'
import ListTitleCom from './ListTitleCom'
import { CardType } from '@kit.VisionKit'

@Component
export default struct ContentCom {
  @Link list: CartGood[]

  @Builder
  leftBuilder() {
    Text('左侧测试')
  }

  @Builder
  rightBuilder(id: string) {
    Text('删除')
      .fontColor(Color.White)
      .height('100%')
      .textAlign(TextAlign.Center)
      .width(100)
      .backgroundColor('#F8304C')
      .onClick(() => {
        // this.list.splice(index, 1)
        // 根据id删除（删除某一项，保留其他项）
        this.list = this.list.filter(item => item.id != id)
      })

  }

  build() {
    Scroll() {
      Column() {
        // 支付
        FreightCom()
          .margin(10)
        // 商品列表
        Column({ space: 10 }) {
          ListTitleCom()
          // 自营区域
          List() {
            // 删除item，会出现复选框状态丢失的bug
            // 这里的bug和ForEach的更新机制有关
            // 默认的key(唯一标识): index + '__' + JSON.stringify(item)
            // 在数组的顺序会发生变化，此时key就一定会变，组件就会销毁重建
            ForEach(this.list, (item: CartGood, index: number) => {
              ListItem() {
                GoodsListItem({
                  item: item
                })
              }
              // 设置列表项左右滑动时候的效果
              .swipeAction({
                end: this.rightBuilder(item.id)
              })

              // 此时，将id作为唯一标识
            }, (item: CartGood, index: number) => item.id)
          }
          .divider({
            strokeWidth: .5,
            startMargin: 10,
            endMargin: 10,
            color: DEEP_GRAY
          })
        }
        .backgroundColor(Color.White)
        .margin({ left: 10, right: 10 })

        // 空车 商品为空时显示
        if (this.list.length == 0) {
          EmptyCom()
        }
      }
    }
    .align(Alignment.Top)
    .padding({ bottom: 10 })
    .edgeEffect(EdgeEffect.Spring)
    .layoutWeight(1)
  }
}
