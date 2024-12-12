@Entry
@Component
struct Index {
  build() {

    // 图形变换：视觉上的变换，不会影响到布局，做动画性能很高
    // 普通的 平移 旋转 缩放等动画 -> 图形变换
    Column({ space: 10 }) {
      Text('关注')
        .textAlign(TextAlign.Center)
        .border({ width: 1 })
        .width(100)
        .height(44)
        .stateStyles({
          normal: {
            // .shadow({
            //   radius: 0
            // })
            .rotate({
              angle: 0
            })
            .translate({
              x: 0,
              y: 0
            })
          },
          pressed: {
            .shadow({
              radius: 10
            })
            // .rotate({
            //   angle: 3600
            // })
            .translate({
              x: 0,
              y: -10,
            })
          }
        })
        .animation({})

      Text('喜欢')
        .width(100)
        .height(44)
        .textAlign(TextAlign.Center)
        .border({ width: 1 })
    }
    .height('100%')
    .width('100%')
    .padding(100)
  }
}