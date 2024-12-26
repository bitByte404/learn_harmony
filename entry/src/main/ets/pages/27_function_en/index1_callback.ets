// 函数回调
// 吧函数当成参数传递，将来在调用的函数内部执行
// 传递的函数，也可以被成为回调函数
function robot(fu1: () => void, fu2: () => void) {
  fu1()
  fu2()
}

robot(() => {
  console.log('跳舞')
}, () => {
  console.log('蹦迪')
})

