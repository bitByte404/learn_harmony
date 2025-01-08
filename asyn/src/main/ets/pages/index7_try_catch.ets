// try catch 捕获await async中错误

const getRandom = () => {
  return new Promise<string>((resolve, reject) => {
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
}

// try catch 除了可以捕获错误之外，还可以保证代码正常运行
async function fn1() {
  try {
    const res = await getRandom()
    console.log('正确的信息', res);
  } catch (error) {
    console.log('错误的信息', error);
  }
}

fn1()

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