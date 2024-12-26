@Component
struct MyHeader {
  @Builder
  defaultBuilder() {
  }

  @BuilderParam leading: () => void = this.defaultBuilder
  @BuilderParam center: () => void = this.defaultBuilder
  @BuilderParam tail: () => void = this.defaultBuilder

  build() {
    Row() {
      Row() {
        this.leading()
      }
      .position({ left: 0, top: 14 })

      Blank()
      Row() {
        this.center()
      }

      Blank()
      Row() {
        this.tail()
      }
      .position({ right: 0, top: 14 })
    }
    .width('100%')
    .height(48)
    .justifyContent(FlexAlign.SpaceAround)
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}

@Entry
@Component
struct Index {
  @Builder
  back() {
    Text('<')
      .fontSize(20)
  }

  @Builder
  centerContent(content: string) {
    Text(content)
      .fontSize(18)
      .fontWeight(FontWeight.Bold)
  }

  @Builder
  tail(content: string) {
    Text(content)
      .fontSize(14)
      .fontColor(Color.Grey)
  }

  build() {
    Column() {
      MyHeader({
        leading: this.back,
        center: () => {
          this.centerContent('任务详情')
        },
        tail: () => {
          this.tail('取消任务')
        }
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}