
// 变量
let car: string = '宝马'
let number: number = 0.4
console.log(car)
let flag: boolean = false
number = 9
flag = true
car = '奥迪'

// 常量
const name = '鸿蒙'
const flag2: boolean = false

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