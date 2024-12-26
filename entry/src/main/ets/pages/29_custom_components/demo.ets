@Component
struct Timer {
  @State count: number = 0

  build() {
    Row() {
      Text('-')
        .fontSize(30)
        .fontColor(Color.White)
        .onClick(() => {
          this.count--
        })
      Text(`${this.count}`)
        .fontSize(30)
        .fontColor(Color.White)
      Text('+')
        .fontSize(30)
        .onClick(() => {
          this.count++
        })
        .fontColor(Color.White)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('30%')
    .padding(10)
    .height(50)
    .borderRadius(16)
    .backgroundColor(Color.Pink)
  }
}

@Entry
@Component
struct Index {
  build() {
    Column({ space: 10 }) {
      Timer({
        count: 8
      })
      Timer({
        count: 0
      })
      Timer({
        count: 3
      })
    }
    .width('100%')
    .height('100%')
  }
}