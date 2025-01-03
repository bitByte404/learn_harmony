// Json与数组/对象之间的转换学习

interface Person {
  name: string
  age: number
}

// 1. 创建json字符串
const jsonObj = '{ "name": "tom", "age": 20 }'
const jsonArr = '["hello", "西兰花"]'

// 2. 将json转为对象/数组
const obj = JSON.parse(jsonObj) as Person
const arr = JSON.parse(jsonArr) as string[]
console.log(`对象${obj.name}`)


// 3. 转为json
console.log(`${JSON.stringify(obj)}`)

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
