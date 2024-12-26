console.log('圆周率', Math.PI)
console.log('随机数', Math.random())
console.log('向上取整', Math.ceil(1.1))
console.log('向下取整', Math.floor(1.9))
console.log('四舍五入', Math.round(1.5))
console.log('求绝对值', Math.abs(-1))
let scores: number[] = [99, 89, 9, 7]
console.log('求最大值', Math.max(0, 34, 5, -6, 9, ...scores))
console.log('求最小值', Math.min(0, 34, 5, -6, 9, ...scores))

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