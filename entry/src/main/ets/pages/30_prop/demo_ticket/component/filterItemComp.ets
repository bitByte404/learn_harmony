import { AddressModel } from "../model/ticketData"

@Component
export default struct filterItemComp {
  @Prop data: AddressModel = new AddressModel(0, '', false)
  select = () => {}

  build() {
    Column() {
      // Text(JSON.stringify(this.addressData))
      Text(this.data.text)
        .height(30)
        .border({ width: 1, color: this.data.isSelected ? '#0094ff' : '#fff' })
        .padding({ left: 15, right: 15 })
        .margin(5)
        .borderRadius(10)
        .backgroundColor(Color.White)
        .onClick(() => {
          this.select()
        })
    }
  }
}