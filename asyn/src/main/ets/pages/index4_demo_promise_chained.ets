import { http } from '@kit.NetworkKit'

// xxx.ets
class bottom {
  bottom: number = 50
}

let bott: bottom = new bottom()

const req = http.createHttp()

interface Response {
  message: string
  list: string[]
}

@Entry
@Component
struct TextPickerExample {
  private apfruits: string[] = ['apple1', 'apple2', 'apple3', 'apple4']
  private orfruits: string[] = ['orange1', 'orange2', 'orange3', 'orange4']
  pefruits: string[] = ['peach1', 'peach2', 'peach3', 'peach4']
  pName: string = ''
  cName: string = ''
  aName: string = ''
  // 二维数组
  @State multi: string[][] = [this.apfruits, this.orfruits, this.pefruits]

  aboutToAppear(): void {
    req.request(`https://hmajax.itheima.net/api/province`)// 省份相关
      .then((res) => {
        const mRes = JSON.parse(res.result as string) as Response
        this.pName = mRes.list[0]
        this.multi[0] = mRes.list
        return req.request(`https://hmajax.itheima.net/api/city?pname=${encodeURIComponent(this.pName)}`)
      })// 城市相关
      .then((res) => {
        const cRes = JSON.parse(res.result as string) as Response
        this.multi[1] = cRes.list
        this.cName = cRes.list[0]
        return req.request(`https://hmajax.itheima.net/api/area?pname=${encodeURIComponent(this.pName)}&cname=${encodeURIComponent(this.cName)}`)
      })// 地区相关
      .then((res) => {
        const aRes = JSON.parse(res.result as string) as Response
        this.multi[2] = aRes.list
      })
  }

  build() {
    Column() {
      TextPicker({ range: this.multi })
        .onChange((value: string | string[],
          index: number | number[]) => {
          console.info('TextPicker 多列:onChange '
            + JSON.stringify(value) + ', '
            + 'index: ' + JSON.stringify(index))
        })
        .margin(bott)
        .canLoop(false)
    }
  }
}