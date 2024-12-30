import { storage } from './Index'

@Entry(storage)
@Component
struct PayPage {
  @LocalStorageLink('count')
  count: number = 0

  build() {
    Column() {
      Text(`支付模块-付款页面 ${this.count}`)
        .fontSize(30)
        .onClick(() => {
          this.count++
        })
    }
    .width('100%')
    .height('100%')
  }
}