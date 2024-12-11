@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Row() {
          Image($r('app.media.jd_cancel'))
            .width(20)
          Text('帮助').fontColor(Color.Grey)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        Image($r('app.media.jd_logo'))
          .height(250)
          .width(250)

        Row() {
          Text('国家/地区')
            .fontColor(Color.Grey)
          Row() {
            Text('中国(+86)')
              .fontColor(Color.Grey)
            Image($r('app.media.jd_right'))
              .height(20)
          }
        }
        .padding({
          top: 15,
          bottom: 15,
          left: 10,
          right: 10
        })
        .justifyContent(FlexAlign.SpaceBetween)
        // .height(40)
        .width('100%')
        .borderRadius(20)
        .backgroundColor('#F5F5F5')

        Row() {
          Text('请输入手机号')
            .fontColor(Color.Grey)
        }
        .padding({
          top: 15,
          bottom: 15,
          left: 10,
          right: 10
        })
        .justifyContent(FlexAlign.Start)
        // .height(40)
        .width('100%')
        .borderRadius(20)
        .margin({
          top: 20,
          bottom: 20
        })
        .backgroundColor('#F5F5F5')


        Row() {
          Image($r('app.media.jd_circle'))
            .width(14)
            .fillColor(Color.Grey)

          Flex({
            wrap: FlexWrap.Wrap
          }) {
            Text('已经阅读并同意')
              .fontColor(Color.Grey)
              .fontSize(12)
            Text('《京东隐私政策》')
              .fontSize(12)
              .fontColor(Color.Blue)
            Text('《京东用户服务协议》')
              .fontColor(Color.Blue)
              .fontSize(12)
            Text('未注册的手机号将自动创建京东账号')
              .fontSize(12)
              .fontColor(Color.Grey)
          }
        }
        .alignItems(VerticalAlign.Top)
        .width('100%')


        Button() {
          Text('登录')
            .fontColor(Color.White)
        }
        .height(40)
        .borderRadius(20)
        .backgroundColor('#D00133')
        .width('100%')
        .margin({
          top: 25,
          bottom: 15
        })

        Row() {
          Text('新用户注册')
            .fontColor(Color.Grey)
            .fontSize(15)
          Text('账号密码登录')
            .fontColor(Color.Grey)
            .fontSize(15)
          Text('无法登录')
            .fontColor(Color.Grey)
            .fontSize(15)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceEvenly)
      }


      Column() {
        Text('其他登录方式')
          .fontColor(Color.Grey)
          .fontSize(14)
        Row() {
          Image($r('app.media.jd_huawei'))
            .height(34)

          Image($r('app.media.jd_wechat'))
            .fillColor('#33A739')
            .height(34)

          Image($r('app.media.weibo'))
            .fillColor('#C74238')
            .height(34)

          Image($r('app.media.jd_QQ'))
            .fillColor('#15A3EE')
            .height(34)
        }
        .width('100%')
        .padding({
          top: 28,
          bottom: 50,
          left: 20,
          right: 20
        })
        .justifyContent(FlexAlign.SpaceBetween)
      }

    }
    .padding({
      top: 20,
      left: 20,
      right: 20,
    })
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.jd_login_bg'))
  }
}