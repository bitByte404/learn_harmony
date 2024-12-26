function fun() /*: void*/ {
  // return undefined 不写return也有返回值，默认undefined
}

// 箭头函数简写
/**
 * 1.函数体只有一行，可以省略大括号
 * 2.省略大括号时，如果有return，也需要一起省略
 * 3.参数只有一个，且不需要写类型，可以省略小括号
 */

let sum = (a: number, b: number) => console.log(`${a + b}`)
sum(2, 4)

let sum2 = (a: number, b: number) => a + b

let sayH = (word: string) => console.log(`${word}`)
let arr: number[] = [55, 66, 3, 6]
let newArr: number[] = arr.filter((item, index) => item < 60)
let newArr2: number[] = arr.filter(item => item <= 60)

arr.forEach(item => console.log(`${item}`))
arr.map(item => item * item)

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