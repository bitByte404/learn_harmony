let name: string[] = ['a', 'b', 'c', 'd']
name.unshift('陈伟') // 头部添加元素
name.shift() // 头部删除元素
name.push('hhh') // 尾部添加元素
name.push() // 尾部删除元素
name.splice(1, 1)

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Text(this.message)
        .fontSize(30)
        .backgroundImageSize(ImageSize.Auto)

      Button('改值')
        .onClick(() => {
          this.message = '点我了'
          AlertDialog.show({
            message: `点我了${this.message}`,
          })
        })
      // .visibility(Visibility.Hidden)
    }
    .width('100%')
    .height('100%')
  }
}