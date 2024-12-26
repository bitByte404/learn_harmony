@Entry
@Component
struct Index {
  @State time: number = 60

  build() {
    Column({ space: 8 }) {
      Text('短信登录')
        .fontSize(25)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)

      TextInput({ placeholder: '请输入手机号' })
        .placeholderColor('#ccc')
        .padding(0)
        .backgroundColor(Color.Transparent)
      Divider()
        .height(1)
        .backgroundColor('#ccc')
      Row() {
        TextInput({ placeholder: '请输入手机号' })
          .placeholderColor('#ccc')
          .padding(0)
          .backgroundColor(Color.Transparent)

        if (this.time == 60) {
          Text('发送验证码')
            .position({
              right: 0,
            })
            .onClick(() => {
              setInterval(() => {
                if (this.time > 0) {
                  this.time--
                  console.log(`${this.time}`)
                }
              }, 1000)
            })
        } else {
          Text(`${this.time}秒后获取`)
            .position({
              right: 0,
            })
        }
      }
      .width('100%')

      Divider()
        .height(1)
        .backgroundColor('#ccc')

      Button('登录')
        .backgroundColor('#D96859')
        .width('100%')
        .margin(10)
        .borderRadius(8)

    }
    .padding({ left: 20, right: 20, top: 20 })
    .width('100%')
    .height('100%')
  }
}