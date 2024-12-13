@Entry
@Component
struct Index {
  @State products: string[] = ['电子商品', '精品服饰', '母婴产品', '影音产品']

  build() {
    Column() {
      ForEach(this.products, (item: string, index) => {
        Text(`${index + 1}-${item}`)
          .fontSize(24)
          .fontWeight(700)
          .fontColor(Color.Orange)
          .width('100%')
          .padding(15)
      })
    }
    .width('100%')
    .height('100%')
  }
}