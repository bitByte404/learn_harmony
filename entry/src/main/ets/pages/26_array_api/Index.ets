// 数组
let arr: string[] = ['张三', '李四', '王五']

// join 将数组的每一项，拼接加入到一起，可以设置连接符
console.log(arr.join('-'))
console.log(arr.join()) // 分隔连接符，有默认值,
console.log(arr.join('')) // 希望所有的连在一起，可以传递空串


let arr2: string[] = ['刘备', '关于', '张飞']
for (let item of arr) {
  console.log(item)
}

for (let i = 0; i < arr2.length; i++) {
  let item = arr[i]
}

// forEach 遍历函数，数组里面每有一项，都会执行一次箭头函数
arr2.forEach((item, index) => {
  console.log(item)
})

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