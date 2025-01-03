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
            // 1. 请求头中的Content-Type 请求体的格式 -> application/x-www-form-urlencoded
            // 以查询字符串 key=value&key2=value2的格式进行传递
            // 2. 如果希望以JSON格式进行传递 (对象)
            // 步骤1：设置请求头 header
            // 步骤2： extraData {}
            header: {
              'Content-Type': 'application/json'
            },
            // 自动转为JSON格式 -> 后端拿到的数据是JSON格式
            extraData: {
              username: this.username,
              password: this.password
            }
          })
            .then((res) => {
              AlertDialog.show({
                message: `${res.result}`
              })
            })
        })
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}