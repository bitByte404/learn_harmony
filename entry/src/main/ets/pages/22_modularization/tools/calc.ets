function add(a: number, b: number) {
  return a + b
}

// 需要导出
// 1. 默认导出语法 export default 值
// 默认导出 一个模块只能导出一个值
export default add

// 如果模块有多个需要导出，可以按需导出
export function minus(a: number, b: number): number {
  return a - b
}

export function getMax(a: number, b: number): number {
  return a > b ? a : b
}

let version: number

// 按需导出也可以这么写
// export {
//   version,
//   getMax,
//   minus
// }

