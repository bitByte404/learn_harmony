@Entry
@Component
struct Index {
  @State isSelected: boolean = false

  build() {
    Column() {
      Row() {
        Checkbox()
          .selectedColor('#A68C62')
          .select($$this.isSelected)
        Text() {
          Span('已阅读并同意')
          Span('《用户协议》')
            .fontColor('#9FD8FF')
          Span('《隐私协议》')
            .fontColor('#9FD8FF')
        }
      }

      Button('切换选中状态')
        .onClick(() => {
          this.isSelected = !this.isSelected
          this.isSelected = !this.isSelected
        })
    }
    .width('100%')
    .height('100%')
  }
}