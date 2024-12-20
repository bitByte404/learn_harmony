// 泛型：让类型可变
function funt(str: string): string {
  return str
}

// 在函数名后加上<> 指明泛型
function fun2<T>(temp: T): T {
  return temp
}

fun2('name')
fun2<string>('name')
fun2<boolean>(false)

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