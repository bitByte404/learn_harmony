// reduce 数组求和
let arr: number[] = [4, 5, 6, 6, 6, 8]
arr.reduce((previous, item, index) => {
  return previous + item //本次累加的结果
}, 0) // 从0开始累加

interface Stu {
  name: string
  score: number
}

let stus: Stu[] = [
  { name: '张三', score: 15 },
  { name: '李四', score: 19 },
  { name: '王五', score: 109 },
]
// 利用reduce求和
stus.reduce((sum, item, index) => {
  return sum + item.score
}, 0)

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