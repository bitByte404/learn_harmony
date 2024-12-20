// interface Person {
//   name: string,
//   age: number,
//   sayHi: () => void
// }
//
// let p: Person = {
//   name: 'cw',
//   age: 20,
//   sayHi: () => {
//     console.log('你好')
//   }
// }
class Person {
  sayHi() {
    console.log('打招呼')
  }
}

let p1: Person = new Person()
p1.sayHi()

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