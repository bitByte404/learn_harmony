// promise对象链式编程写法虽然提高阅读体验，不够精致
// -> 还是需要通过回调函数的方式获取数据
// async 和  await 一起配合优化
// 1. async 修饰函数
// 2. await 后面跟上promise对象即可

function getRandomNum(delay: number): Promise<string> {
  return new Promise<string>((resolve, reject) => {
    setTimeout(() => {
      const randomNum = Math.floor(Math.random() * 101)
      resolve(randomNum.toString())
    }, delay)
  })
}


async function fn() {
  const res = await getRandomNum(2000)
  console.log('res', res)
  const res1 = await getRandomNum(3000)
  console.log('res1', res1)
}

fn()

@Entry
@Component
struct Index {
  build() {

  }
}