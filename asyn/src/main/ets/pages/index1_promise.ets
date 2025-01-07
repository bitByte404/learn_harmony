/**
 * Promise是一个对象
 * 处理异步的操作
 * 解决回调地狱
 * promise内部执行异步代码
 * 传递成功结果 .then
 * 传递失败结果 .catch
 */
// 目的：简化代码，维护性更高
import { http } from '@kit.NetworkKit'

const p = new Promise<string>((resolve, reject) => {
  // 一般在promise内部写异步代码
  setTimeout(() => {
    // 获取随机数
    const randomNum = Math.floor(Math.random() * 101)
    console.log('随机整数为：', randomNum)
    if (randomNum >= 50) {
      resolve('成功结果为：' + randomNum) // resolve 决定了将来可以执行 .then 并且传递结果
    } else {
      reject('失败结果为' + randomNum)
    }
  }, 2000)
})

// .then 可以获取promise内部成功后的结果


// .catch 可以获取promise内部失败后的结果
// 获取失败结果，有两种写法
// 1. promise对象.then(() => {}, (err) => { 失败结果 })
// p.then((res) => {
//   AlertDialog.show({
//     message: res
//   })
// }, (err: string) => {
//   AlertDialog.show({
//     message: err,
//     borderColor: Color.Red
//   })
// })
// 2. promise对象.then(() => { 成功 }) .catch(() => { 失败 })
p.then((res) => {
  AlertDialog.show({
    message: '成功的数据：' + res
  })
})
  .catch((err: string) => {
    AlertDialog.show({
      message: '失败的数据：' + err
    })
  })

const req = http.createHttp()
// req.request('请求路径') 返回的结果为promise
req.request('请求路径')
  .then((res) => {
    // 成功后的业务逻辑
  })
  .catch((err: string) => {
    // 失败后的业务逻辑
  })


// 体验request请求的写法
const myRequest = (url: string) => {
  // 返回一个promise对象，才能在函数使用的时候，.then获取成功结果 .catch获取失败结果
  return new Promise<string>((resolve, reject) => {
    setTimeout(() => {
      resolve('成功后的结果')
    }, 2000)
  })
}

myRequest('https://www.baidu.com')
  .then((res) => {

  })
  .catch((err: string) => {

  })


@Entry
@Component
struct Index {
  build() {

  }
}