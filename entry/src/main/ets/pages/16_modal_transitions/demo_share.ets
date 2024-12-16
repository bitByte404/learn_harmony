@Entry
@Component
struct Index {
  @State isShow: boolean = false
  icons: MyIconData[] = [
    { pic: 'ic_share_wechat', title: '微信' },
    { pic: 'ic_share_pyq', title: '朋友圈' },
    { pic: 'ic_share_sina', title: '微博' },
    { pic: 'ic_share_url', title: '复制链接' },
  ]

  @Builder
  MyIcon(iconData: MyIconData) {
    Column({ space: 5 }) {
      Image($r(`app.media.${iconData.pic}`))
        .height(40)
      Text(iconData.title)
    }
  }

  @Builder
  ShareSheet() {
    Column() {
      Text('分享给好友')
      Image($r('app.media.ic_public_cancel'))
        .height(20)
        .position({ right: 10, top: 0 })
        .fillColor(Color.Grey)
        .onClick(() => {
          this.isShow = false
        })
      Row() {
        ForEach(this.icons, (iconData: MyIconData, index) => {
          this.MyIcon(iconData)
        })
      }
      .justifyContent(FlexAlign.SpaceEvenly)
      .height(100)
      .width('100%')
    }
    .padding(15)
    .width('100%')
  }

  build() {
    Column() {
      Button('立即分享')
        .bindSheet($$this.isShow, this.ShareSheet, {
          height: SheetSize.FIT_CONTENT, // 自适应高度
          showClose: false,
        })
        .onClick(() => {
          this.isShow = true
        })
    }
    .width('100%')
    .height('100%')
  }
}

interface MyIconData {
  pic: string
  title: string
}