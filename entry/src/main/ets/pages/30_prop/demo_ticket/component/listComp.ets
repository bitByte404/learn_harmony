import { AddressModel, iTicketData, sourceData } from "../model/ticketData"

@Component
export default struct listComp {
  // 默认使用完整的数据
  @Prop list: iTicketData[] = []

  build() {
    List() {
      ForEach(this.list, (item: iTicketData) => {
        ListItem() {
          Column() {
            // 车票信息行
            Row() {
              // 其实时间和站点
              Column({ space: 10 }) {
                Text(item.beginTime)
                  .fontSize(20)
                  .fontWeight(500)
                Text(item.beginStation)
              }
              .layoutWeight(1)

              // 车次和总用时
              Column({ space: 5 }) {
                Text(item.TNum)
                  .fontSize(20)
                  .fontWeight(500)
                Divider()
                  .width(80)
                  .color('rgba(0,0,0,0.4)')
                Text(item.totalTime)
              }
              .layoutWeight(1.5)

              // 结束时间和终点站
              Column({ space: 10 }) {
                Text(item.endTime)
                  .fontSize(20)
                  .fontWeight(500)
                Text(item.endStation)
              }
              .layoutWeight(1)

              // 票价
              Column({ space: 10 }) {
                Text() {
                  Span('￥')
                    .fontSize(14)
                  Span(item.price.toFixed(1))
                  Span('起')
                    .fontSize(15)
                }
                .fontSize(20)
                .fontWeight(500)
                .fontColor('#FF6600')

                Text('')
              }
              .layoutWeight(1)
            }
            .height(100)
            .width('100%')

            // 横线
            Divider()
              .width('100%')
              .color('rgba(0,0,0,0.4)')
              .padding({ left: 15, right: 15 })

            //  票数量行
            Flex({ wrap: FlexWrap.Wrap }) {
              Text() {
                Span('二等')
                Span(' 6张')
                  .fontColor(Color.Green)
              }
              .fontSize(14)
              .width(80)
              .padding({ top: 10 })

              Text() {
                Span('一等')
                Span(' 有票')
                  .fontColor(Color.Green)
              }
              .fontSize(14)
              .width(80)
              .padding({ top: 10 })

              Text() {
                Span('特等')
                Span(' 有票')
                  .fontColor(Color.Green)
              }
              .fontSize(14)
              .width(80)
              .padding({ top: 10 })

              Text() {
                Span('商务')
                Span(' 有票')
                  .fontColor(Color.Green)
              }
              .fontSize(14)
              .width(80)
              .padding({ top: 10 })

              Text() {
                Span('无座')
                Span(' 有票')
                  .fontColor(Color.Green)
              }
              .fontSize(14)
              .width(80)
              .padding({ top: 10 })
            }
            .width('100%')
            .padding({
              left: 15,
              right: 15,
              top: 10,
              bottom: 10
            })

          }
          .width('100%')
          .backgroundColor(Color.White)
          .border({ width: 1, color: 'rgba(0,0,0,0.1)' })
          .borderRadius(10)
          .margin({ top: 5 })
        }
      })
    }
    .padding(10)
    .scrollBar(BarState.Off)
  }
}