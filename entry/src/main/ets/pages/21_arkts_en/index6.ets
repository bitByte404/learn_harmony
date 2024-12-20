class Person {
  readonly name: string // 只读
  public age: number
  private wife: string
  protected hobby: string

  constructor(name: string // 只读
    , age: number, wife: string, hobby: string) {
    this.name = name
    this.age = age
    this.wife = wife
    this.hobby = hobby
  }
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
