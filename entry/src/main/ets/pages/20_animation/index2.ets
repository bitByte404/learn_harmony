import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  @State translateValue: string = '100%'
  @State isShow: boolean = false

  build() {
    Column() {
      Column() {
        Text('我是侧边栏')
        Button('隐藏')
          .onClick(() => {
            this.isShow = false
          })
      }
      .width('60%')
      .backgroundColor('#ccc')
      .height('100%')
      .translate({
        x: this.isShow ? '0%' : '-100%'
      })
      .animation({
        duration: 200,
        onFinish: () => {
          promptAction.showToast({ message: '动画结束' })
        }
      })
      .position({
        x: 0, y: 0
      })

      Button('开启侧边栏')
        .onClick(() => {
          this.isShow = true
        })
    }
    .width('100%')
    .height('100%')
  }
}