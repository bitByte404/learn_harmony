@Entry
@Component
struct Index {
  // @Provide装饰器和@Consume装饰器 与后代实现双向同步
  @Provide number: number = 100

  build() {
    Column({ space: 10 }) {
      Text(`顶层组件${this.number}`)
        .onClick(() => {
          this.number++
        })
        .fontWeight(FontWeight.Bold)
        .fontSize(30)
      SecondComp()
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
    .padding(20)
  }
}

@Component
struct SecondComp {
  @Consume number: number

  build() {
    Column() {
      Text(`我是二级组件-${this.number}`)
        .onClick(() => {
          this.number++
        })
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .padding(5)
      InnerComp()
    }
    .width('90%')
    .backgroundColor(Color.Green)
    .justifyContent(FlexAlign.SpaceBetween)
    .borderRadius(10)
    .height(150)
  }
}

@Component
struct InnerComp {
  @Consume number: number

  build() {
    Column() {
      Text(`我是内部组件-${this.number}`)
        .onClick(() => {
          this.number++
        })
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .padding(5)
    }
    .width('80%')
    .backgroundColor(Color.Pink)
    .borderRadius(10)
    .height(30)
  }
}