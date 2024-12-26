@Entry
@Component
struct Index {
  @State flag: boolean = true

  build() {
    Column() {
      Row() {
        Checkbox({})
          .select($$this.flag)
          .selectedColor(Color.Red)
          .unselectedColor(Color.Brown)
          .shape(CheckBoxShape.ROUNDED_SQUARE)
        Text('统一许可协议')
        Text(this.flag.toString())
      }
    }
    .width('100%')
    .height('100%')
  }
}