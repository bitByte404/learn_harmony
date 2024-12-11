@Entry
@Component
struct Index {
  build() {
    Column() {
      Column({
        space: 20
      }) {
        Text().width(50).height(50)
          .border({ width: 1 })
          .backgroundColor(Color.Orange)

        Text().width(50).height(50)
          .border({ width: 1 })
          .backgroundColor(Color.Orange)

        Text().width(50).height(50)
          .border({ width: 1 })
          .backgroundColor(Color.Orange)
      }
      .width(300)
      .height(400)
      .border({
        width: 2
      })
      .margin(20)

      Row({
        space: 20
      }) {
        Text().width(50).height(50)
          .border({ width: 1 })
          .backgroundColor(Color.Orange)

        Text().width(50).height(50)
          .border({ width: 1 })
          .backgroundColor(Color.Orange)

        Text().width(50).height(50)
          .border({ width: 1 })
          .backgroundColor(Color.Orange)
      }
      .width(300)
      .height(400)
      .border({
        width: 2
      })
      .margin(20)
    }
  }
}