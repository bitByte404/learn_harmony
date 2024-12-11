@Entry
@Component
struct Index {
  build() {
    Column({}) {
      Text('按钮')
        .border({ width: 1 })
        .borderRadius(5)
        .padding(10)
        .margin(10)
        .fontColor(Color.Black)
        .enabled(false)
        .stateStyles({
          // normal: {
          //   // 默认状态样式
          //   // .backgroundColor(Color.White)
          //   // .fontColor(Color.Black)
          //   .width(20)
          // },
          pressed: {
            // 按压状态样式
            .backgroundColor(Color.Green)
            // .fontColor(Color.White)
            .width(200)
          },
          disabled: {
            .backgroundColor(Color.Grey)
          }
        })// 给组件添加上animation后，只要 [有通用属性的变化]
        .animation({})

      Row() {
        Button('确认')
          .stateStyles({
            normal: {
              .backgroundColor(Color.Orange)
            },
            focused: {
              .backgroundColor(Color.Green)
            }
          })
        Button('取消')
      }
    }
    .height('100%')
    .width('100%')
  }
}