// 1. 字符串转数字
// Number() 正常转数字
console.log('结构', Number('1') + 1)
console.log('结构', Number('1.1') + 1)
console.log('结构', Number('a') + 1) // NaN 转数字失败了

// parseInst() 正常转数字，保留整数部分，其他小数部分舍弃
console.log('结果', parseInt('1') + 1)
console.log('结果', parseInt('1.1') + 1)
console.log('结果', parseInt('1.1a') + 1)

let score: number = 100.1

console.log(score.toString());
console.log(score.toFixed());
console.log(score.toFixed(1)); // 保留几位小数
console.log(score.toFixed(2)); // 保留几位小数(四舍五入)

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