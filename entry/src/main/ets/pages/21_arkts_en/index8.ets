function fu<T>(arr: T[]): number {
  return arr.length
}

fu([1, 2, 3])
fu<number>([1, 2, 3])

interface ILength {
  length: number
}

// 对类型做约束
function fun<Type extends ILength>(temp: Type) {
  console.log(`${temp.length}`)
}

fun('abc')

interface ISort {
  name: string
  age: string
}

function fun2<T extends ISort>(temp: T) {
  console.log(`${temp.name} ${temp.name}`)
}

function fun3<T1, T2>(a: T1, b: T2) {
  console.log(`${a} ${b}`)
}

// 泛型接口
interface IDesc<T> {
  name: T
  age: T
  height: string
}

let obj: IDesc<number> = {
  name: 8,
  age: 10,
  height: ''
}

class Person<T> {
  height: T
  weight: T

  constructor(height: T, weight: T) {
    this.height = height
    this.weight = weight
  }
}

let p: Person<string> = new Person('张飞', '80cm');


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