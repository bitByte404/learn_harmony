@Entry
@Component
struct Date01 {
  @State hour: string = '00'
  @State minute: string = '00'
  @State second: string = '00'

  setTime() {
    let year = new Date().getFullYear()
    let now = new Date()
    let hour = now.getHours()
    let minutes: number = now.getMinutes()
    let seconds: number = now.getSeconds()
    this.hour = hour < 10 ? '0' + hour : hour.toString()
    this.minute = minutes < 10 ? '0' + minutes : minutes.toString()
    this.second = seconds < 10 ? '0' + seconds : seconds.toString()
  }

  build() {
    Column() {
      Column() {
        Text('2024年 3 月 24 日 周日')
          .fontColor(Color.White)
          .fontSize(20)
        Stack() {
          Row({ space: 10 }) {
            Text(`${this.hour}`)
              .textStyle()
            Text(`${this.minute}`)
              .textStyle()
            Text(`${this.second}`)
              .textStyle()
          }
          .onAppear(() => {
            setInterval(() => {
              this.setTime()
            }, 1000)
          })

          Divider()
            .strokeWidth(2)
            .color(Color.Black)
        }
        .padding(10)

        Text('Stay hungry,Stay foolish')
          .fontColor(Color.White)
          .fontSize(18)
      }

    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Black)
    .justifyContent(FlexAlign.Center)
  }
}


@Extend(Text)
function textStyle() {
  .width(100)
  .height(100)
  .backgroundColor('#191919')
  .borderRadius(10)
  .textAlign(TextAlign.Center)
  .fontColor(Color.White)
  .fontSize(70)
  .fontWeight(900)
}