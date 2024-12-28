import filterItemComp from "./component/filterItemComp"
import listComp from "./component/listComp"
import { AddressModel, iTicketData, sourceData } from "./model/ticketData"


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
  @State tickets: iTicketData[] = []
  @State selectedCity: string[] = []

  build() {
    Column() {
      // 选中条件显示
      Row({ space: 4 }) {
        Text('您选中的条件：')
        Flex({
          wrap: FlexWrap.Wrap
        }) {
          ForEach(this.selectedCity, (city: string, index) => {
            Text(city)
              .margin({ left: 4, bottom: 4 })
          })
        }
        .layoutWeight(1)
      }
      .width('100%')
      .margin({ top: 10, left: 10 })

      // 出发和达到站搜索条件区域
      Row({ space: 10 }) {
        Scroll() {
          Row() {
            // 出发
            ForEach(this.beginList, (item: AddressModel, index) => {
              // 给clickHander传数据的时候，记得使用箭头函数包括起来，这样this不会改变
              filterItemComp({
                data: item,
                select: () => {
                  item.isSelected = !item.isSelected
                  this.beginList.splice(index, 1, item)
                  this.selectedCity = this.beginList
                    .filter(item => item.isSelected)
                    .map(value => value.text)
                  this.tickets = sourceData.filter((item) => {
                    return this.selectedCity.includes(item.beginStation)
                  })
                }
              })
            })

          }
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)
        .layoutWeight(1)
      }
      .margin({ top: 10 })

      //   车站列表
      listComp({
        list: this.tickets
      })
        .layoutWeight(1)

    }
    .width('100%')
    .height('100%')
    .backgroundColor('rgba(0,0,0,0.05)')

  }
}


