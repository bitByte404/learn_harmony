import { Car } from '../../entryability/EntryAbility'
import { add50 } from './utils/SetEntryStorage'

const storage = LocalStorage.getShared()

@Entry(storage)
@Component
struct MoneyPage {
  @LocalStorageProp('count')
  count: number = 0
  @LocalStorageLink('msg')
  msg: string = ''
  @LocalStorageLink('car')
  car: Car = {
    brand: '',
    price: 0
  }

  build() {
    Column() {
      Text(this.msg)
      Text(`${this.car.brand}-${this.car.price}`)
      Text(`支付模块-收款 ${this.count}`)
        .fontSize(30)
        .onClick(() => {
          add50()
        })
    }
    .width('100%')
    .height('100%')
  }
}