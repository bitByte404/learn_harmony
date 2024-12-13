let names: string[] = ['挑战', '小巧', '大桥', 'gege']
for (let item of names) {
  console.log('每一项', `${item}`)
}

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