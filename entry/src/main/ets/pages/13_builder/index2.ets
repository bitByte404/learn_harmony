@Entry
@Component
struct Index {
  @Builder
  MyIcon(resource: ResourceStr, str: string) {
    Column({ space: 10 }) {
      Image($r(`${resource}`))
        .width(60)
      Text(`${str}`)
    }
  }

  build() {
    Column() {
      Row() {
        this.MyIcon('app.media.ic_reuse_01', '阿里拍卖')
        this.MyIcon('app.media.ic_reuse_02', '菜鸟')
        this.MyIcon('app.media.ic_reuse_03', '芭芭农场')
        this.MyIcon('app.media.ic_reuse_04', '阿里药房')
      }
      .backgroundColor(Color.White)
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .padding(5)
      .borderRadius(10)
    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor('#ccc')
  }
}