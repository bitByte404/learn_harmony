import http from '@ohos.net.http';
import { interactiveLiveness } from '@kit.VisionKit';

interface IResponse {
  message: string
  list: string[]
}

const req = http.createHttp()

@Entry
@Component
struct Day03_06_AreaChange {
  @State message: string = '居住地选择';
  @State range: string[][] = [['北京'], ['北京市'], ['东城区']]
  @State selected: number[] = [0, 0, 0]
  // 这部分信息的目的是渲染到页面上
  @State values: string[] = ['北京', '北京市', '东城区']
  // 请求对象
  req: http.HttpRequest = http.createHttp()
  @State showSheet: boolean = false
  timeId: number = -1

  async aboutToAppear() {
    const res = await req.request(`https://hmajax.itheima.net/api/province`)
    const pRes = JSON.parse(res.result.toString()) as IResponse
    this.range[0] = pRes.list
    const pname = pRes.list[0]

    const res2 = await req.request(`https://hmajax.itheima.net/api/city?pname=${encodeURIComponent(pname)}`)
    const cRes = JSON.parse(res2.result.toString()) as IResponse
    this.range[1] = cRes.list
    const cname = cRes.list[0]

    const res3 =
      await req.request(`https://hmajax.itheima.net/api/area?pname=${encodeURIComponent(pname)}&cname=${encodeURIComponent(cname)}`)
    const aRes = JSON.parse(res3.result.toString()) as IResponse
    this.range[2] = aRes.list
  }

  build() {
    Column({ space: 10 }) {
      // 标题
      Text(this.message)
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)
        .width('100%')
        .margin({ bottom: 20 })
      //
      Row({ space: 10 }) {
        Text('居住地:')
          .fontWeight(FontWeight.Bold)
        Text(this.values.join('/'))
          .layoutWeight(1)
          .fontColor(Color.Gray)
          .onClick(() => {
            this.showSheet = true
          })
        Image($r('app.media.ic_public_arrow_right'))
          .width(20)
      }

      Divider()
      Blank()


    }
    .height('100%')
    .width('100%')
    .alignItems(HorizontalAlign.Start)
    .padding(20)
    .bindSheet($$this.showSheet, this.areaSheet(), {
      height: 300
    })
  }

  @Builder
  areaSheet() {
    Column() {
      TextPicker({
        range: this.range,
        selected: $$this.selected,
        // value: $$this.values //
      })
        .onChange(async (value, index) => {
          /**
           * 1. 省联动效果
           * 1.1 onChange 中监听到选择省的信息改变
           * 1.2 拿到最新的省份，重新发送请求，获取市和区
           *
           * 2. 同步页面居住地的省市区
           *
           * 3. 监听省份变化时 - 同步市和区
           * 3.1 市 -> 市列表中第一个
           * 3.2 区 -> 去列表中第一个
           *
           * 4. 监听市变化时-同步区
           */

          //1. 清除上一个的延时器
          clearTimeout(this.timeId)
          this.timeId = setTimeout(async () => {


            // 针对与省份切换
            if (value[0] != this.values[0]) {
              // 函数防抖 防止高频触发导致性能的浪费


              // 2. 再重新创建延时器
              // 注意点：掩饰其中代码什么时候执行? 500ms内没有再次执行

              this.selected[1] = 0
              this.selected[2] = 0

              // 1. 重新获取市
              const pname = value[0]
              const res2 = await req.request(`https://hmajax.itheima.net/api/city?pname=${encodeURIComponent(pname)}`)
              this.range[1] = (JSON.parse(res2.result.toString()) as IResponse).list
              this.values[0] = pname

              const cname = this.range[1][0]
              this.values[1] = cname
              const res3 =
                await req
                  .request(`https://hmajax.itheima.net/api/area?pname=${encodeURIComponent(pname)}&cname=${encodeURIComponent(cname)}`)
              this.range[2] = (JSON.parse(res3.result.toString()) as IResponse).list
              this.values[2] = this.range[2][0]
              return
            }

            if (this.values[1] != value[1]) {
              // 先同步居住地城市
              const res3 =
                await req
                  .request(`https://hmajax.itheima.net/api/area?pname=${encodeURIComponent(value[0])}&cname=${encodeURIComponent(value[1])}`)
              this.range[2] = (JSON.parse(res3.result.toString()) as IResponse).list
              this.selected[2] = 0
              this.values[2] = this.range[2][0]
              return
            }

            if (this.values[2] != value[2]) {
              this.values[2] = value[2]
            }
          }, 500)

        })
        .canLoop(false)
    }
  }
}

