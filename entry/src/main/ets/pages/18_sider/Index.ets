@Entry
@Component
struct Index {
  build() {
    SideBarContainer() {
      // 子组件1 侧边栏
      Column() {
        Text('侧边栏')
        Text('侧边栏')
        Text('侧边栏')
        Text('侧边栏')
      }
      .backgroundColor('#ccc')

      // 子组件2：主体内容
      Column() {
        Text('我是主体')
        Text('我是主体')
        Text('我是主体')
        Text('我是主体')
      }
    }
    // .showSideBar(true) // 是否需要默认显示
    // .showControlButton(false) // 是否显示控制按钮
    .sideBarWidth(200) // 侧边栏宽度
    .sideBarPosition(SideBarPosition.Start) // 调整左右
    // 拖拽范围
    // .minSideBarWidth(100)
    // .maxSideBarWidth(300)
    // 禁用拖拽
    .minSideBarWidth(200)
    .maxSideBarWidth(200)
    .width('100%')
    .height('100%')
  }
}