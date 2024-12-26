// 数组方法：过滤 filter
// 筛选出所有数据 < 60 的数据，存到一个数组中
let arr: number[] = [44, 66, 77, 88, 9, 999]
// 靠返回值，判断是否满足条件，返回true，任务需要收集，返回false，认为不需要收集
let newArr = arr.filter((item, index) => {
  return item < 60
})

console.log(`${newArr}`)

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