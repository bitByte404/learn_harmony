interface HeroInfo {
  id: number
  name: string
  title: string
  type: string
  avatar: string
}

// 筛选条件: 全部、战士、法师、坦克、刺客、射手、辅助
const arr: HeroInfo[] = [
  {
    id: 116,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/116/116.jpg',
    name: '阿轲',
    title: '信念之刃',
    type: '刺客'
  },
  {
    id: 117,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/117/117.jpg',
    name: '钟无艳',
    title: '野蛮之锤',
    type: '战士'
  },
  {
    id: 118,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/118/118.jpg',
    name: '孙膑',
    title: '逆流之时',
    type: '辅助'
  },
  {
    id: 119,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/119/119.jpg',
    name: '扁鹊',
    title: '善恶怪医',
    type: '法师'
  },
  {
    id: 120,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/120/120.jpg',
    name: '白起',
    title: '最终兵器',
    type: '坦克'
  },
  {
    id: 121,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/121/121.jpg',
    name: '芈月',
    title: '永恒之月',
    type: '法师'
  },
  {
    id: 123,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/123/123.jpg',
    name: '吕布',
    title: '无双之魔',
    type: '战士'
  },
  {
    id: 132,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/132/132.jpg',
    name: '马可波罗',
    title: '远游之枪',
    type: '射手'
  },
  {
    id: 133,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/133/133.jpg',
    name: '狄仁杰',
    title: '断案大师',
    type: '射手'
  },
]

@Entry
@Component
struct Func3 {
  filterList: string[] = ['全部', '战士', '法师', '坦克', '刺客', '射手', '辅助']
  @State currentIndex: number = 0
  @State showList: HeroInfo[] = arr

  build() {
    Column() {
      Row() {
        ForEach(this.filterList, (item: string, index: number) => {
          Text(item)
            .onClick(() => {
              this.currentIndex = index
              let type: string = this.filterList[index]
              this.showList = arr.filter((item, index) => {
                if (type == '全部') {
                  return true
                }
                return item.type == type
              })
            })
            .border({
              width: { bottom: 2 },
              color: index == this.currentIndex ? Color.Orange : Color.Transparent
            })
            .padding({ bottom: 3 })
            .fontColor(index == this.currentIndex ? Color.Orange : Color.Black)
            .fontSize(index == this.currentIndex ? 18 : 13)
        })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({ top: 10, bottom: 10 })

      List({ space: 10 }) {
        ForEach(this.showList, (item: HeroInfo, index) => {
          ListItem() {
            Row({ space: 10 }) {
              Image(item.avatar)
                .width(50)
                .borderRadius(10)
              Column({ space: 10 }) {
                Text(`${item.title}-${item.name}`)
                Text(item.type)
                  .fontSize(12)
                  .fontColor(Color.Gray)
              }
              .alignItems(HorizontalAlign.Start)
            }
            .backgroundColor('#f8f9fc')
            .width('100%')
            .padding(5)
            .borderRadius(10)
          }
        })

      }
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}