import { print } from '@kit.BasicServicesKit'
import { hilog } from '@kit.PerformanceAnalysisKit'

function fn() {
  console.log('五角星', 'h')
  console.log('五角星', 'hh')
  console.log('五角星', 'hhh')
  console.log('五角星', 'hhh')
}

let fu2 = (name1: string, name2: string) => {
  return name1 + name2;
}

let printStar= () => {
  console.log('还哈哈哈')
}

// 利用接口，约定对象的结构
interface Person {
  name: string
  age: number
  weight: number

  dance: () => void
  sing: (song: string) => void
}

// 将接口当作类型，定义对象
let ym: Person = {
  name: '杨幂',
  age: 17,
  weight: 90,
  dance: (): void => {
    console.log('我来跳个舞')
  },
  sing: (song: string): void => {
    console.log(`唱歌：${song}`)
  }
}

// 获取对象的属性
console.log('对象', JSON.stringify(ym))
console.log('访问对象属性', ym.name)

// 联合leixing
let score: number | string = 99
score = "hhhh"
let sex: '男' | '女' | '其他' = '男'

// 枚举
enum ThemeColor {
  Red = '#ff0f25',
  Green = '#ff78ff7f',
  Blue = '#ff265b4a'
}

console.log(ThemeColor.Red)

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}