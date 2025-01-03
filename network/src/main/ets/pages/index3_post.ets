import http from '@ohos.net.http'

const req = http.createHttp()

@Entry
@Component
struct Day01_05_SubmitData {
  @State username: string = ''
  @State password: string = ''

  build() {
    Column({ space: 15 }) {
      Text('请求方法和数据提交')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
      TextInput({ text: $$this.username, placeholder: '用户名' })
      TextInput({ text: $$this.password, placeholder: '密码' })
        .type(InputType.Password)

      Button('提交数据')
        .width('100%')
        .onClick(() => {
          AlertDialog.show({
            message: `用户名:${this.username}| 密码:${this.password}`
          })
          // 将用户输入内容提交给服务器
          req.request('http://hmajax.itheima.net/api/register', {
            method: http.RequestMethod.POST,
            extraData: `username=${this.username}&password=${this.password}`
          })
            .then((res) => {
              AlertDialog.show({
                message: res.result.toString()
              })
            })
        })

      Button('登录')
        .width('100%')
        .onClick(() => {
          req.request(`https://hmajax.itheima.net/api/login`, {
            method: http.RequestMethod.POST,
            extraData: `username=${this.username}&password=${this.password}`
          })
            .then((res) => {
              AlertDialog.show({
                message: res.result.toString()
              })
            })
        })
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}