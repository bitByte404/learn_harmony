@Entry
@Component
  // 父组件
struct Link_Demo {
  @State count: number = 0

  build() {
    Column() {
      Text('父组件')
        .fontSize(30)
      Text(this.count.toString())
      Button('修改数据')
        .onClick(() => {
          this.count++
        })
      SonComponent({
        count: this.count
      })
    }
    .padding(10)
    .height('100%')
    .backgroundColor('#ccc')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
    .padding({ top: 100 })
  }
}

@Component
  // 子组件
struct SonComponent {
  // @Prop 父子单项联动
  // @Link 父子双向联动 link不能滥用
  // @Link修饰的变量不能初始化，并且@Link接受到底数据，必须是状态变量直接修饰的数据
  // 所以对于嵌套的情况，无法给传递的item进行 @Link绑定
  @Link count: number

  // 编写 UI
  build() {
    Column({ space: 20 }) {
      Text(`我是子组件${this.count}`)
        .fontSize(20)
      Column() {
        Button('修改count')
          .onClick(() => {
            this.count++
          })
      }
    }
    .backgroundColor('#a6c398')
    .alignItems(HorizontalAlign.Center)
    .width('80%')
    .margin({ top: 100 })
    .padding(10)
    .borderRadius(10)
  }
}