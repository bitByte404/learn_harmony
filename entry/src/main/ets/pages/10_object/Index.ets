import { JSON } from '@kit.ArkTS'

interface Person {
  name: string
  age: number
  height: number
  gender: string
}

let p1: Person = {
  name: '张飞',
  age: 18,
  height: 220,
  gender: '男'
}

let list: Person[] = [
  {
    name: '张飞',
    age: 18,
    height: 220,
    gender: '男'
  },

  {
    name: '里斯',
    age: 18,
    height: 20,
    gender: '女'
  }
]

console.log('打印', JSON.stringify(list))

@Entry
@Component
struct Index {
  @State products: string[] = ['电子商品', '精品服饰', '母婴产品', '影音产品']

  build() {
    Column() {
      ForEach(this.products, (item: string, index) => {
        Text(item)
          .fontSize(24)
          .fontWeight(700)
          .fontColor(Color.Orange)
          .width('100%')
          .padding(15)
      })
    }
    .width('100%')
    .height('100%')
  }
}

