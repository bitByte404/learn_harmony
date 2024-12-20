// typeof
console.log('类型', typeof 1)
console.log('类型', typeof '你好')
console.log('类型', typeof true)
type Height = number | string

let h: Height = 1
console.log('h的类型', typeof h)

function myFn(h: Height) {
  if (typeof h == 'number') { // 类型约束
    console.log('结果', h + 20)
  } else {
    console.log('结果', parseInt(h) + 20)
  }
}

myFn(30)
myFn('40厘米')

// typeof只能用于判断简单数据类型，不能用来判断对象 用instanceof解决


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