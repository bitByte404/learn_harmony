@Entry
@Component
struct Index {
  @State username: string = 'admin'

  build() {
    Column() {
      TextInput({
        placeholder: '请输入用户名',
        // text 控制输入框的文本内容
        text: $$this.username, // $$ 双向绑定
      })
      TextInput({
        placeholder: '请输入用户名',
        // text 控制输入框的文本内容
        text: $$this.username, // $$ 双向绑定
      })
      // .onChange((value: string) => this.username = value)

      Text(this.username)
      Button('修改输入框的值')
        .onClick(() => {
          this.username = 'jack'
        })
      Button('登录')
        .onClick(() => {
          AlertDialog.show(
            { message: `用户名：${this.username}` }
          )
        })
    }
    .width('100%')
    .height('100%')
  }
}