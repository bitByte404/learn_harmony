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
            .scale({
              x: 1,
              y: 1,
              centerX: 0,
              centerY: 0
            })
            
          },
          pressed: {
            // .width(150)
            // .height(80)
            .scale({
              x: 2,
              y: 2,
              centerX: 0,
              centerY: 0
            })
          }
        })
      // .animation({
      //   curve: Curve.EaseIn,
      //   duration: 3000,

      // })

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