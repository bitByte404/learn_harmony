/**
 * Promise 有三个状态
 * 一旦状态发生改变之后，就会出现状态凝固，状态不可逆
 * pending 等待中
 * fulfilled 已完成 - 成功
 * rejected 已拒绝 - 失败
 */

const p = new Promise<string>((resolve, reject) => {
  //  将当前的promise对象的状态 pending -> fulfilled
  resolve('success')
  // 无效代码 - 状态凝固
  reject('err')
})

p.then((res) => {
  AlertDialog.show({
    message: res
  })
})
  .catch((err: string) => {
    AlertDialog.show({ message: err })
  })

@Entry
@Component
struct Index {
  build() {

  }
}