let arr: number[] = [1, 2, 3, 4, 5, 6]
let arr2 = arr.map((item, index) => {
  // map return 将每次返回的值收录到一个新数组中，最终作为整个map的返回值返回
  return item * item
})
console.log(`${arr2}`)

interface Person {
  name: string
  age: number
}

let person: Person[] = [
  { name: 'Alice', age: 30 },
  { name: 'Bob', age: 20 },
  { name: 'Civi', age: 32 },
]

let ageArr: number[] = person.map((item, index) => {
  return item.age
})

console.log('成绩数组', ageArr)

interface Hero {
  id: number
  name: string
  money: number
}

let stuArr: string[] = ['a', 'b', 'c']
// 如果map中返回值时对象，需要通过泛型指定返回的类型
let heroArr: Hero[] = stuArr.map<Hero>((item, index) => {
  return {
    id: index + 1,
    name: item,
    money: 100
  }
})


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