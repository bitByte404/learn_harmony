@Component
export default  struct filterItemComp {
  build() {
    Column() {
      // Text(JSON.stringify(this.addressData))
      Text('广州南')
        .height(30)
        .border({ width: 1, color: true ? '#0094ff' : '#fff' })
        .padding({ left: 15, right: 15 })
        .margin(5)
        .borderRadius(10)
        .backgroundColor(Color.White)

    }
  }
}