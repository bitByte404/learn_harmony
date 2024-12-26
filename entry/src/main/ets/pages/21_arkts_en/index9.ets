interface Person {
  name?: string,
  age?: number
  desc?: string
}

// 工具类型 --> 创建一个新类型，基于现有的类型进行改良
// 1. Partial<类型> 让属性可选
type newPerson = Partial<Person>

// 2. Required<类型> 必选
type person2 = Required<Person>

// 3. Readonly<类型> 只读
type person3 = Readonly<Person>

// 4. Record<Keys, Type> -> 基于keys，基于Keys键，进行生成一个新的类型，每个键的类型，都是Type
type UserRoles = 'admin' | 'editor' | 'viewer'
type newUserRoles = Record<UserRoles, boolean>

let obj: newUserRoles = {
  'admin': false,
  'editor': false,
  'viewer': false
}

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