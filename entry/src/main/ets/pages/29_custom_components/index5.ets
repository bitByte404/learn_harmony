@Extend(Button)
function submitButton() {
  .height(28)
  .backgroundColor('#448CEE')
  .type(ButtonType.Normal)
  .borderRadius(4)
}

@Extend(Button)
function normalButton() {
  .height(28)
  .type(ButtonType.Normal)
  .fontColor(Color.Grey)
  .borderColor(Color.Grey)
  .borderWidth(1)
  .backgroundColor(Color.White)
  .borderRadius(4)
}

@Component
struct MyDialog {
  title: string = '警告'
  content: string = '温馨提示'

  @Builder
  ContentDefault() {
    Text(this.content)
      .fontColor(Color.Grey)
      .fontSize(10)
  }

  @BuilderParam DiglogContent: () => void = this.ContentDefault

  build() {
    Column() {
      Row() {
        Text(this.title)
        Text('x')
      }
      .width('100%')
      .padding(10)
      .borderWidth({
        bottom: 1
      })
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        this.DiglogContent()
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)
      .borderWidth({
        bottom: 1
      })
      .padding({
        top: 20,
        bottom: 20,
        left: 10,
        right: 10
      })

      Row({
        space: 10
      }) {
        Button('取消')
          .normalButton()
        Button('确认')
          .submitButton()
      }
      .padding(10)
      .justifyContent(FlexAlign.End)
      .width('100%')
    }
    .width('80%')
    .height(150)
    .padding({
      top: 10
    })
    .backgroundColor('#fff')
    .borderRadius(10)
  }
}

@Entry
@Component
struct Index {
  @Builder
  myContent() {
    TextInput({ placeholder: '添加用户' })
  }

  build() {
    Column({
      space: 20
    }) {
      MyDialog() {
        Text('你好')
      }

      MyDialog({
        title: '请输入用户'
      }) {
        this.myContent()
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}