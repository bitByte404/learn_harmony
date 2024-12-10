@Entry
@Component
struct Index {
  build() {
    // 图片显示控制
    Column() {
      Image('https://cdn.pixabay.com/photo/2018/03/13/17/46/please-3223194_640.jpg')
        .width(200)
        .objectFit(ImageFit.Contain)// 保持宽高比，缩放到一条边和宽高相等： 优势：能看到整个图片，但是可能会有留白
        .aspectRatio(1)
        .backgroundColor(Color.Pink)
      Image('https://cdn.pixabay.com/photo/2018/03/13/17/46/please-3223194_640.jpg')
        .width(200)
        .objectFit(ImageFit.Cover)// 保持宽高比，缩放到铺满整个容器，可能会失去部分图片展示
        .aspectRatio(1)
      Image('https://cdn.pixabay.com/photo/2018/03/13/17/46/please-3223194_640.jpg')
        .width(200)
        .objectFit(ImageFit.Fill)// .objectFit(ImageFit.Fill) // 失去宽高比，可能会变形
        .aspectRatio(1)
    }
  }
}