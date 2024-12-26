export default class Person {
  name: string
  age: string

  constructor(name: string, age: string) {
    this.name = name
    this.age = age
  }
}

export function sayHi() {
  console.log('打招呼')
}

export function run() {
  console.log('跑步')
}