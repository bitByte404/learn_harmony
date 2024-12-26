@Component
struct HelloCom {
  @State count: number = 20
  title: string = '标题'

  addCount() {
    AlertDialog.show({
      message: '你好啊'
    })
    this.count++
  }

  build() {
    Text(`我是hello文本${this.count}`)
      .width(200)
      .height(50)
      .backgroundColor(Color.Orange)
      .border({ width: 2 })
      .margin(30)
      .onClick(() => {
        this.addCount()
      })
  }
}

@Entry
@Component
struct Index {
  build() {
    Column() {
      HelloCom({
        count: 30,
        
      })
      HelloCom()
    }
    .width('100%')
    .height('100%')
  }
}