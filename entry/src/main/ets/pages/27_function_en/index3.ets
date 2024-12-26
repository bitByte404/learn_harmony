// 字符串方法
// split 和 join 配对
// split 切割
// join 拼接
let str = '2023-9-7'
let arr = str.split('-')
let result = `${arr[0]}年${arr[1]}月${arr[2]}日`
console.log(`${result}`)

let name = 'DANDADAN'
let low = name.toLowerCase()
console.log(low)
let str2 = 'just do it'.toUpperCase()
console.log(str2)

let userName = '    admin    '
// trim 去除首位空格
console.log(`${userName.trim()}`)

let a = 'lucy'
let words = 'hello lucy'
console.log(`${words.includes(a)}`)

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