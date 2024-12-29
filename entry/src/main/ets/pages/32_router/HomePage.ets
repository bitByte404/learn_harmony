import { router } from '@kit.ArkUI';

interface IObj {
  username: string,
  password: string
}

@Entry
@Component
struct HomePage {
  @State homeUsername: string = '';
  @State homePassword: string = '';

  // 生命周期钩子：一些函数，特定的时机执行(被自动调用)
  // 组件准备要加载构建时执行(执行时机，在build之前)
  // 可以在这里接受参数，操作state数据，后续更新到build中
  aboutToAppear() {
    // 获取所有传递的参数
    // router.getParams()
    // AlertDialog.show({
    //   message: JSON.stringify(router.getParams())
    // })
    // 参数传递过来的格式，非常的不稳定，具体传参过来的是什么格式需要手动确定
    let obj = router.getParams() as IObj
    this.homeUsername = obj.username
    this.homePassword = obj.password
  }

  build() {
    Column() {
      Text('首页')
        .fontSize(30)
      Text(`用户名：${this.homeUsername}`)
      Text(`密码：${this.homePassword}`)
    }
    .height('100%')
    .width('100%')
  }
}