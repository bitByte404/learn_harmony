@Entry
@Component
struct Index {
  build() {
    // 图片显示控制
    Column() {
      // 1. 配置网络图片，只需要填入图片地址即可
      Image('https://cdn.pixabay.com/photo/2017/08/30/17/26/please-2697951_1280.jpg')
        .width('100%')

      // 2. 配置本地图片
      Image($r('app.media.avatar'))
        .width('100%')

      Image($r('app.media.app_icon'))
        .width(100)
        .aspectRatio(2) // 宽高比例
    }
  }
}