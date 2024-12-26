// 导入
// import 自定义的名字 from '模块路径'
import addFu from './tools/calc'
import { getMax, minus } from './tools/calc'
// 全部导入
import * as Person from './tools/calc'

Person.minus(6, 8)

addFu(4, 5)
getMax(6, 9)

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


