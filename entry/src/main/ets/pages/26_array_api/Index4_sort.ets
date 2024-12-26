let arr: number[] = [5, 6, 3, 2, 8]
// sort 会改变原数组
arr.sort((a: number, b: number) => {
  // 返回值 > 0 交换位置
  // 返回值 <=0 位置不变
  return a - b
})

arr.sort((a: number, b: number) => {
  return b - a
})
console.log('数组', arr)

interface Student {
  name: string,
  score: number
}

let stus: Student[] = [
  { name: '张三', score: 15 },
  { name: '李四', score: 19 },
  { name: '王五', score: 109 },
]

stus.sort((a: Student, b: Student) => {
  return b.score - a.score
})

console.log(`${JSON.stringify(stus)}`)


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