import { iTicketData } from "../model/ticketData"

@Component
export default  struct listComp {
  // 原始数据，不要直接修改，基于他进行筛选
  sourceData: iTicketData[] = [
    {
      id: 1,
      beginTime: '15:05',
      endTime: '15:36',
      totalTime: '31分',
      TNum: 'G319',
      beginStation: '广州南',
      endStation: '深圳北',
      price: 86
    },
    {
      id: 2,
      beginTime: '15:05',
      endTime: '16:09',
      totalTime: '1时4分',
      TNum: 'G1185',
      beginStation: '广州东',
      endStation: '深圳',
      price: 79.5
    },
    {
      id: 3,
      beginTime: '15:33',
      endTime: '16:09',
      totalTime: '36分',
      TNum: 'G1187',
      beginStation: '新塘',
      endStation: '福田',
      price: 70
    },
    {
      id: 4,
      beginTime: '16::44',
      endTime: '18:42',
      totalTime: '1时58分',
      TNum: 'C6760',
      beginStation: '广州白云',
      endStation: '福海西',
      price: 80
    },
    {
      id: 5,
      beginTime: '15:55',
      endTime: '17:51',
      totalTime: '1时56分',
      TNum: 'C6705',
      beginStation: '广州',
      endStation: '深圳机场',
      price: 78
    },
    {
      id: 6,
      beginTime: '20:34',
      endTime: '22:13',
      totalTime: '1时39分',
      TNum: 'C6707',
      beginStation: '广州北',
      endStation: '沙井西',
      price: 92.5
    }
  ]
  // 默认使用完整的数据
  @State list: iTicketData[] = this.sourceData

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
                  Span(item.price.toString())
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