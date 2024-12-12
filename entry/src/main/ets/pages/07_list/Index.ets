@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {

      }
      .height(40)
      .width('100%')
      .backgroundColor(Color.Yellow)

      List({
        space: 2
      }) {
        ListItem() {
          Column() {

          }
          .width(100)
          .height(200)
          .borderWidth(2)
          .backgroundColor(Color.Pink)
        }

        ListItem() {
          Column() {

          }
          .width(200)
          .height(200)
          .borderWidth(2)
          .backgroundColor(Color.Pink)
        }

        ListItem() {
          Column() {

          }
          .width('100%')
          .height(200)
          .borderWidth(2)
          .backgroundColor(Color.Pink)
        }

        ListItem() {
          Column() {

          }
          .width('100%')
          .borderWidth(2)
          .backgroundColor(Color.Pink)
        }

        ListItem() {
          Column() {

          }
          .width('100%')

          .height(200)
          .borderWidth(2)
          .backgroundColor(Color.Pink)
        }

        ListItem() {
          Column() {

          }
          .width('100%')
          .height(200)
          .borderWidth(2)
          .backgroundColor(Color.Pink)
        }

        ListItem() {
          Column() {

          }
          .width('100%')
          .height(200)
          .borderWidth(2)
          .backgroundColor(Color.Pink)
        }

      }
      .layoutWeight(1)
      .padding(10)
      .listDirection(Axis.Horizontal)
      .alignListItem(ListItemAlign.Start)
      .lanes(2, 20)
      .width('100%')
      .scrollBar(BarState.Off)

      Row() {

      }
      .height(50)
      .width('100%')
      .backgroundColor(Color.Yellow)

    }
    .width('100%')
    .height('100%')
  }
}