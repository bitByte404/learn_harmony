@Entry
@Component
struct Index {
  // @Styles可以定义在组件内部 就可以访问组件内的数据
  @Styles
  bgColor() {
    .backgroundColor(Color.Orange)
  }

  build() {
    Column({ space: 20 }) {
      Text('文本')
        .commonText()
      Row()
        .commonText()
      Button('你好', { type: ButtonType.Normal })
        .commonText()
    }
    .padding(10)
    .width('100%')
  }
}

// 通用属性和通用事件封装 不限制于某种特定组件，不支持传参
// 可以定义在全局和局部
@Styles
function commonText() {
  .width(200)
  .height(100)
  .backgroundColor(Color.Pink)
  .borderRadius(10)
  .onClick(() => {
    AlertDialog.show({
      message: '你好'
    })
  })
}
