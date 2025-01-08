// promise 对象的链式编程写法
// 上一个 .then 的后面继续 .then...
function getRandomNum(delay: number): Promise<string> {
  return new Promise<string>((resolve, reject) => {
    setTimeout(() => {
      const randomNum = Math.floor(Math.random() * 101)
      resolve(randomNum.toString())
    }, delay)
  })
}

getRandomNum(2000)
  .then((res) => {
    AlertDialog.show({
      message: '第一个.then的结果' + res
    })
    // 链式编程的核心
    // 上一个 .then中返回的一个新的promise对象，给到下一个.then的结果
    return getRandomNum(3000)
  })
  .then((res) => {
    AlertDialog.show({
      message: '第二个.then的结果' + res
    })
    return getRandomNum(1000)
  })
  .then((res) => {
    AlertDialog.show({
      message: '第三个.then的结果' + res
    })
  })

@Entry
@Component
struct Index {
  build() {

  }
}