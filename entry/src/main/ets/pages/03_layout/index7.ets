@Entry
@Component
struct Index {
  build() {
    Column({ space: 20 }) {
      Image($r('app.media.avatar'))
        .height(70)
        .borderRadius(10)
      TextInput({
        placeholder: '请输入用户名'
      })
      TextInput({
        placeholder: '请输入密码'
      })
        .passwordIcon({
          onIconSrc: $r('app.media.sun'),
          offIconSrc: $r("app.media.i_moon")
        })
        .type(InputType.Password)

      Row({
        space: 5
      }) {
        // Text('男')
        // Radio({
        //   value: '男',
        //   group: 'radioGroup'
        // })
        //
        // Text('女')
        // Radio({
        //   value: '女',
        //   group: 'radioGroup'
        // })

        Checkbox()
        Text() {
          Span('我已阅读并同意')
          ImageSpan($r('app.media.avatar'))
            .height(18)
          Span('《京东隐私政策》')
            .fontColor('#007DFE')
          Span('《京东隐私政策》')
            .fontColor('#007DFE')
          Span('未注册的手机号将自动创建京东账号')
        }
        .layoutWeight(1)
        .fontSize(14)
      }

      Button('登录')
        .width('100%')
    }
    .height('100%')
    .width('100%')
    .padding(20)
  }
}