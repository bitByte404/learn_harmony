import filterItemComp from "./component/filterItemComp"
import listComp from "./component/listComp"
import { AddressModel } from "./model/ticketData"


@Entry
@Component
struct Index {
  // 准备出发站点数据
  @State
  beginList: AddressModel[] = [
    new AddressModel(1, '广州南', false),
    new AddressModel(2, '广州东', false),
    new AddressModel(3, '新塘', false),
    new AddressModel(4, '广州白云', false),
    new AddressModel(5, '广州', false),
    new AddressModel(6, '广州北', false)
  ]
  @State selectedCity: string[] = []

  build() {
    Column() {
      // 选中条件显示
      Row() {
        Text('您选中的条件：')
        Text('广州南')
      }
      .width('100%')
      .margin({ top: 10, left: 10 })

      // 出发和达到站搜索条件区域
      Row({ space: 10 }) {
        Scroll() {
          Row() {
            // 出发
            ForEach(Array.from({ length: 3 }), (item: AddressModel) => {
              // 给clickHander传数据的时候，记得使用箭头函数包括起来，这样this不会改变
              filterItemComp()
            })

          }
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)
        .layoutWeight(1)
      }
      .margin({ top: 10 })

      //   车站列表
      listComp()
        .layoutWeight(1)

    }
    .width('100%')
    .height('100%')
    .backgroundColor('rgba(0,0,0,0.05)')

  }
}


