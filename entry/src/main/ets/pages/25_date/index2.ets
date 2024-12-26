// Data类
let now = new Date(1693039237877) // 没有传参获取的就是当前时间，传入参数（时间戳）就是指定时间
console.log('时间', now)
console.log('年份：', now.getFullYear())
console.log('月份：', now.getMonth() + 1)
console.log('星期：', now.getDay())
console.log('日：', now.getDate())
console.log('时：', now.getHours())
console.log('分：', now.getMinutes())
console.log('秒：', now.getSeconds())
console.log('时间戳', Number(now))

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