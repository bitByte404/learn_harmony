import http from '@ohos.net.http';


const req = http.createHttp()

interface JokeResponse {
  msg: string
  code: number
  data: string[]
}

@Entry
@Component
struct Day01_03_QueryParams {
  @State pname: string = '';
  @State jokeNum: string = ''
  @State jokes: string[] = []
  @State cities: string[] = []

  build() {
    Column() {
      Column({ space: 10 }) {
        Text('开心一笑')
          .fontSize(30)
        TextInput({ placeholder: '输入笑话条数', text: $$this.jokeNum })
          .type(InputType.Number)
          .onSubmit(() => {
            // url：https://api-vue-base.itheima.net/api/joke/list
            // 参数: num 笑话数量
            req.request('https://api-vue-base.itheima.net/api/joke/list?num=' + this.jokeNum)
              .then((res) => {
                // AlertDialog.show({
                //   message: `${res.result}`
                // })
                const jokeRes = JSON.parse(res.result.toString()) as JokeResponse
                this.jokes = jokeRes.data
              })
            AlertDialog.show({
              message: '输入的数值是:' + this.jokeNum
            })
          })
        ForEach(this.jokes, (joke: string) => {
          Text(joke)
        })
      }
      .layoutWeight(1)
      .width('100%')
      .padding(10)

      Divider()
        .color(Color.Pink)
        .strokeWidth(3)
      Column({ space: 10 }) {
        Text('省份城市查询')
          .fontSize(30)
        TextInput({ placeholder: '请输入查询的省份名', text: $$this.pname })// 键盘事件
          .onSubmit(e => {
            // url：https://hmajax.itheima.net/api/city
            // 参数: pname 省份名
            AlertDialog.show({
              message: '输入的省份名是:' + this.pname
            })
          })
        Grid() {
          ForEach(this.cities, (city: string) => {
            GridItem() {
              Text(city)
            }
            .border({ width: 1 })
          })
        }
        .columnsTemplate('1fr '.repeat(4))
        .columnsGap(10)
        .rowsGap(10)
      }
      .layoutWeight(1)
      .width('100%')
      .padding(10)
    }
    .height('100%')
  }
}