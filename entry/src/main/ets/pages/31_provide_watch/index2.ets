@Entry
@Component
struct Index {
  // 以前：数据变化了，都是去渲染页面
  // @Watch侦听器，监视器：监视数据的变化，做一些事情(发请求，给提示...)
  // 放对象，监视自身和第一层改变
  // 建议@State @Prop @Link等装饰器在@Watch装饰器之前
  @State @Watch('handleChange') msg: string = ''

  handleChange() {
    if (this.msg.length > 10) {
      AlertDialog.show({ message: '用户名建议不超过10' })
    }
  }

  build() {
    Column() {
      TextInput({
        text: $$this.msg,
        placeholder: '请输入用户名'
      })
      Button('设置输入框的值')
        .onClick(() => {
          this.msg = '123'
        })
      Button('清空输入框的值')
        .onClick(() => {
          this.msg = ''
        })
    }
    .width('100%')
    .height('100%')
  }
}