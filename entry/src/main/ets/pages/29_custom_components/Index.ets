import MyHeader from '../../component/MyHeader'
import MyMain from '../../component/MyMain'

// @Entry // 有entry -> 页面级组件
// 页面组件可以拆成多个小组件
@Entry
@Component
struct Index {
  build() {
    Column() {
      MyHeader()
      MyMain()
    }
    .width('100%')
    .height('100%')
  }
}