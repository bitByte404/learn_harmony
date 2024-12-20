@Entry
@Component
struct Index {
  @State state: AnimationStatus = AnimationStatus.Initial
  @State isShow: boolean = false

  build() {
    Column() {
      Image('/common//demo1//loading_dog_0.png')
        .width(200)
      // Image('/common//demo1//loading_dog_1.png')
      //   .width(200)
      // Image('/common//demo1//loading_dog_2.png')
      //   .width(200)
      Image('/common//demo1//loading_dog_3.png')
        .width(200)

      Text('帧动画演示').fontSize(30)
      // 帧动画必须设置宽高
      ImageAnimator()
        .images([
          { src: '/common//demo1//loading_dog_0.png' },
          { src: '/common//demo1//loading_dog_1.png' },
          { src: '/common//demo1//loading_dog_2.png' },
          { src: '/common//demo1//loading_dog_3.png' },
        ])
        .width(200)
        .height(100)
        .duration(100 * 4)// 一整个动画的时长
        .state(this.state)
        .iterations(-1)

      Row() {
        Button('播放')
          .onClick(() => {
            this.state = AnimationStatus.Running
          })
        Button('暂停')
          .onClick(() => {
            this.state = AnimationStatus.Paused
          })
        Button('停止')
          .onClick(() => {
            this.state = AnimationStatus.Stopped
          })
      }

      Column() {
        Button('切换')
          .onClick(() => {
            animateTo({}, () => {
              this.isShow = !this.isShow
            })
          })
        if (this.isShow) {
          Text()
            .width(100)
            .height(100)
            .backgroundColor(Color.Orange)
        }
      }
      .width('100%')
      .height(200)
    }
    .width('100%')
    .height('100%')
  }
}