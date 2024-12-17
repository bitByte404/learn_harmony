@Entry
@Component
struct Index {
  @State isShow: boolean = false

  build() {
    SideBarContainer(SideBarContainerType.Overlay) {
      Column() {
        Image($r('app.media.ic_douban_side'))
          .width('100%')
      }
      .height('100%')

      .backgroundColor('#f7f7f7')

      Column() {
        Button('打开侧边栏')
          .onClick(() => {
            this.isShow = true
          })
        Image($r('app.media.ic_douban_main'))
          .width('100%')
      }
    }
    .showSideBar($$this.isShow)
    .controlButton({
      icons: {
        shown: $r('app.media.ic_public_cancel'),
        hidden: $r('app.media.more'),
        // switching: $r('app.media.more')
      }
    })
    .width('100%')
    .height('100%')
  }
}