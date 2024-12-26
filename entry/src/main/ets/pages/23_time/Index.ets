@Entry
@Component
struct Index {
  @State num: number = 0
  timeId: number = -1

  build() {
    Column() {
      Text(`${this.num}`)
        .fontSize(100)
      Button('开启定时器setTimeout')
        .onClick(() => {
          // 延迟执行，执行一次
          setTimeout(() => {
            this.num++
          }, 1000)
        })
      Button('开启定时器setInterval')
        .onClick(() => {
          // 定时执行，执行多次 可以叠加
          this.timeId = setInterval(() => {
            this.num++
          }, 1000)
        })
      Button('停止')
        .onClick(() => {
          clearInterval(this.timeId)
        })
    }
    .width('100%')
    .height('100%')
  }
}