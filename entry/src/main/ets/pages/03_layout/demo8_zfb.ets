@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        Row() {
          Column({ space: 2 }) {
            Text('北京')
              .fontSize(15)
              .fontColor(Color.White)
            Row({ space: 2 }) {
              Text('晴')
                .fontColor(Color.White)
                .fontSize(12)
              Text('2℃')
                .fontColor(Color.White)
                .fontSize(12)
            }
          }

          Image($r('app.media.zfb_head_down'))
            .height(12)
            .fillColor(Color.White)
        }
        .alignItems(VerticalAlign.Top)
        .margin({ right: 12 })

        Row({ space: 10 }) {
          Image($r('app.media.zfb_head_search'))
            .height(20)
          Text('北京交通一卡通')
          Row() {
            Text('|')
              .fontColor(Color.Grey)
            Text('搜索')
              .margin({
                left: 8
              })
              .fontColor('#5473E6')
          }
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .backgroundColor(Color.White)
        .padding(8)
        .borderRadius(10)
        .layoutWeight(1)

        Image($r('app.media.zfb_head_plus'))
          .height(26)
          .fillColor(Color.White)
          .margin({
            left: 12
          })
      }
      .height(60)
      .padding(10)
      .width('100%')

      Row() {
        Column() {
          Image($r('app.media.zfb_top_scan'))
            .width(36)
            .fillColor(Color.White)
          Text('扫一扫')
            .fontColor(Color.White)
        }

        Column() {
          Image($r('app.media.zfb_top_pay'))
            .width(36)
            .fillColor(Color.White)
          Text('收付款')
            .fontColor(Color.White)
        }

        Column() {
          Image($r('app.media.zfb_top_travel'))
            .width(36)
            .fillColor(Color.White)
          Text('出行')
            .fontColor(Color.White)
        }

        Column() {
          Image($r('app.media.zfb_top_card'))
            .width(36)
            .fillColor(Color.White)
          Text('卡包')
            .fontColor(Color.White)
        }
      }
      .justifyContent(FlexAlign.SpaceAround)
      .width('100%')

      Column({ space: 8 }) {
        Row() {
          Column() {
            Image($r('app.media.zfb_nav1'))
              .height(28)
            Text('滴滴出行')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav2'))
              .height(28)
            Text('生活缴费')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav3'))
              .height(28)
            Text('股票')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav4'))
              .height(28)
            Text('蚂蚁森林')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav5'))
              .height(28)
            Text('手机充值')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)

        Row() {
          Column() {
            Image($r('app.media.zfb_nav1'))
              .height(28)
            Text('滴滴出行')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav2'))
              .height(28)
            Text('生活缴费')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav3'))
              .height(28)
            Text('股票')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav4'))
              .height(28)
            Text('蚂蚁森林')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav5'))
              .height(28)
            Text('手机充值')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)

        Row() {
          Column() {
            Image($r('app.media.zfb_nav1'))
              .height(28)
            Text('滴滴出行')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav2'))
              .height(28)
            Text('生活缴费')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav3'))
              .height(28)
            Text('股票')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav4'))
              .height(28)
            Text('蚂蚁森林')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }

          Column() {
            Image($r('app.media.zfb_nav5'))
              .height(28)
            Text('手机充值')
              .margin({
                top: 8
              })
              .fontColor(Color.Grey)
              .fontSize(13)
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)

      }
      .backgroundColor(Color.White)
      .layoutWeight(1)
      .width('100%')
      .padding(10)
      .margin({
        top: 15
      })
      .borderRadius({
        topLeft: 20,
        topRight: 20
      })
    }
    .backgroundColor('#5473E6')
    .height('100%')
    .width('100%')
  }
}