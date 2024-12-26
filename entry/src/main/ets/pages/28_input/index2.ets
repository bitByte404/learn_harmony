@Extend(TextInput)
function borderBottom() {
  .backgroundColor(Color.Transparent)
  .padding(0)
  .borderRadius(0)
  .height(48)
  .border({
    width: { bottom: 1 },
    color: '#33182431'
  })
}

@Entry
@Component
struct Index {
  @State username: string = ''
  @State password: string = ''

  build() {
    Column({ space: 20 }) {
      TextInput({
        placeholder: '请输入用户名',
        text: $$this.username, // $$ 双向绑定
      })
        .borderBottom()

      TextInput({
        placeholder: '请输入密码',
        // text 控制输入框的文本内容
        text: $$this.password, // $$ 双向绑定
      })
        .borderBottom()
        .type(InputType.Password)
        .passwordIcon({
          onIconSrc: $r('app.media.avatar'),
          offIconSrc: $r('app.media.ic_dream')
        })

      Button('登录')
        .onClick(() => {
          AlertDialog.show(
            { message: `用户名：${this.username} 密码：${this.password}` }
          )
        })
    }
    .padding(10)
    .width('100%')
    .height('100%')
  }
}