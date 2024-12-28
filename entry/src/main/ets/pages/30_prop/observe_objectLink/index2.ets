interface IHero {
  name: string
  attack: number
  IQ: number
}

// 加上@Observe的类，表示将来基于这个类创建的对象里面的属性，将被监视变化
@Observed
class Hero {
  name: string
  attack: number
  IQ: number

  constructor(obj: IHero) {
    this.name = obj.name
    this.attack = obj.attack
    this.IQ = obj.IQ
  }
}


@Entry
@Component
struct Index {
  heros: Hero[] = [new Hero({
    name: '卢布', attack: 100, IQ: 2
  }), new Hero({
    name: '貂蝉', attack: 10, IQ: 200
  })]

  build() {
    Column({ space: 10 }) {
      ForEach(this.heros, (item: Hero, index) => {
        HeroCard({ hero: item })
      })
      Button('父组件的的数据')
        .onClick(() => {
          AlertDialog.show({
            message: `${JSON.stringify(this.heros)}`
          })
        })
    }
    .padding(10)
    .width('100%')
    .height('100%')
  }
}

@Component
struct HeroCard {
  // 专门针对于嵌套对象的Link => 典型场景 [{}, {}]
  @ObjectLink hero: Hero

  build() {
    Column({ space: 8 }) {
      Text(`英雄卡片${this.hero.name}`)
      Row({ space: 8 }) {
        Text(`智力：${this.hero.IQ}`)
        Text('[增加+1]')
          .onClick(() => {
            this.hero.IQ++
          })
        Text('[减少-1]')
          .onClick(() => {
            this.hero.IQ--
          })
      }

      Row({ space: 8 }) {
        Text(`武力：${this.hero.attack}`)
        Text('[增加+1]')
          .onClick(() => {
            this.hero.attack++
          })
        Text('[减少-1]')
          .onClick(() => {
            this.hero.attack--
          })
      }
    }
    .width(100)
    .width('100%')
    .padding(20)
    .border({
      width: 1,
      radius: 10
    })
    .margin(20)
  }
}