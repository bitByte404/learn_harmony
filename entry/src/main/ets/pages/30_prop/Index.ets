// @State修饰的变量，默认只监视自身和第一层
// this.list = []  自身
// this.flag =  true
import { JSON } from '@kit.ArkTS'

// this.list [0] = 值
// this.obj.name = ''

// this.obj.car.brand = '' 第二层 不会更新

interface Person {
  name: string,
  age: number
}

let obj: Person = {
  name: 'zs',
  age: 18
}

// 鸿蒙底层：会执行 Object.keys() 记录哪些属性的修改 需要驱动更新
console.log(JSON.stringify(Object.keys(obj)))

// 当对比差异修改的成本很高，不如全量替换

@Entry
@Component
struct Index {
  build() {
    Column() {

    }
    .width('100%')
    .height('100%')
  }
}