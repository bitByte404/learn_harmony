@Entry
@Component
struct Index {
  @State list: Card[] = [
    { num: 0, url: 'app.media.bg_00' },
    { num: 0, url: 'app.media.bg_01' },
    { num: 0, url: 'app.media.bg_02' },
    { num: 0, url: 'app.media.bg_03' },
    { num: 0, url: 'app.media.bg_04' },
    { num: 0, url: 'app.media.bg_05' },
  ]
  @State randomIndex: number = 0
  @State isShow: boolean = false
  @State selectCard: string = ''
  @State scaleX: number = 0
  @State scaleY: number = 0
  @State wardVisibility: boolean = false

  build() {
    Column() {
      // 1.  顶层卡片
      Column() {
        List({ space: 20 }) {
          ForEach(this.list, (card: Card, index) => {
            ListItem() {
              // 角标组件
              Badge({
                count: card.num,
                style: {
                  badgeSize: 20,
                  badgeColor: '#f00',
                  fontSize: 16
                }
              }) {
                Image($r(card.url))
                  .width(80)
              }
            }
          })
        }
        .lanes(3)
        .alignListItem(ListItemAlign.Center)
        .margin({ top: 20 })
        .clip(false) // 溢出内容不裁切

        Button('立即抽奖')
          .width('80%')
          .margin({ top: 20 })
          .onClick(() => {
            this.isShow = true
            // 让卡片缩放变大
            this.scaleX = 1
            this.scaleY = 1
            this.randomIndex = Math.floor(Math.random() * 6)
          })
          .stateStyles({
            normal: {
              .backgroundColor('#ed5b8c')
            },
            pressed: {
              .backgroundColor('#ea446c')
            }
          })
          .animation({
            duration: 200
          })
      }
      .width('100%')
      .height('100%')

      // 2. 抽卡 遮罩层
      Column() {
        Text('获得生肖卡')
          .fontSize(25)
          .fontWeight(680)
          .fontColor('#f5ebcf')

        Image($r(`app.media.img_0${this.randomIndex}`))
          .width(200)
          .margin(30)
          .scale({
            x: this.scaleX,
            y: this.scaleY
          })
          .animation({})
        Button('开心收下')
          .width(200)
          .height(50)
          .backgroundColor(Color.Transparent)
          .border({ width: 2, color: Color.White })
          .onClick(() => {
            this.isShow = false

            this.scaleX = 0
            this.scaleY = 0
            this.list[this.randomIndex] = {
              num: this.list[this.randomIndex].num + 1,
              url: 'app.media.img_0' + this.randomIndex,
            }
            // this.$set(this.list, this.randomIndex, {
            //   num: this.list[this.randomIndex].num + 1
            // })
            if (checkWin(this.list)) {
              this.wardVisibility = true
            }
          })
      }
      .justifyContent(FlexAlign.Center)
      .width('100%')
      .height('100%')
      .backgroundColor($r('sys.color.mask_primary'))
      .position({
        top: 0,
        left: 0
      })
      .visibility(this.isShow ? Visibility.Visible : Visibility.Hidden)
      .margin({ bottom: 20 })

      // 中奖结果
      Column({ space: 50 }) {
        Text('恭喜获得手机一部')
          .fontColor('#F5EBCF')
          .fontSize(25)
          .fontWeight(600)

        Image($r('app.media.hw'))
          .width(300)
        Button('再来一次')
          .width(200)
          .height(50)
          .backgroundColor(Color.Transparent)
          .border({ width: 2, color: '#FFF9E0' })
          .onClick(() => {
            this.wardVisibility = false
            this.list = [
              { num: 0, url: 'app.media.bg_00' },
              { num: 0, url: 'app.media.bg_01' },
              { num: 0, url: 'app.media.bg_02' },
              { num: 0, url: 'app.media.bg_03' },
              { num: 0, url: 'app.media.bg_04' },
              { num: 0, url: 'app.media.bg_05' },
            ]
          })
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#CC000000')
      .justifyContent(FlexAlign.Center)
      .position({
        x: 0,
        y: 0
      })
      .visibility(this.wardVisibility ? Visibility.Visible : Visibility.None)
    }
  }
}

interface Card {
  num: number,
  url: string
}

function checkWin(cards: Card[]): boolean {
  for (let card = 0; card < cards.length; card++) {
    const element = cards[card];
    if (element.num == 0) {
      return false
    }
  }
  return true
}
