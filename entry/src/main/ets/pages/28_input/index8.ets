// // 验证字符串中是否存在a
// let reg1: RegExp = /a/
// let reg2 = new RegExp('a')
// console.log('结果', reg1.test('abc'))
//
// // 实际开发：严格匹配更多 限制以xx开头，xx结尾 限制几位
// // ^限制开头
// let reg: RegExp = /^ball/
// console.log('结果', reg.test('basketball'))
// console.log('结果', reg.test('balls'))

let reg2: RegExp = /foot$/
console.log('结果', reg2.test('footBall'))
console.log('结果', reg2.test('myfoot'))

let reg3: RegExp = /^moon$/ // 只能是moon才能匹配
console.log('', reg3.test('moon'))
console.log('', reg3.test('moonmoon'))
console.log('', reg3.test('moonyear'))

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