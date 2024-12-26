let reg: RegExp = /^k*$/ // 可以有0个或多个k, 且只能有k
// 匹配  '' k kk kkk kkkk...
console.log('', reg.test('abc'))
console.log('', reg.test(''))
console.log('', reg.test('k'))

let reg2: RegExp = /^ak*$/
console.log('', reg.test(''))
console.log('', reg.test('ak'))


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