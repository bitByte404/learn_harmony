class Person {
  name: string /* = '老六'*/
  age: number /*= 18*/
  hobby: string[] /*= ['唱', '跳', 'rap']*/
  static title = '人类'

  run() {
    console.log('快跑')
  }

  constructor(name: string, age: number, hobby: string[]) {
    this.name = name
    this.age = age
    this.hobby = hobby
  }
}

let p1: Person = new Person('老牛', 18, ['唱歌'])
console.log(p1.name)
console.log(Person.title);

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