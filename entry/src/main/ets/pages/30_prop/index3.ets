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
  @Prop isShow: boolean = false
  clickClose = () => {
  }

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
          .onClick(() => {
            this.clickClose()
          })
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
    .visibility(this.isShow ? Visibility.Visible : Visibility.None)
    .width('80%')
    .height(180)
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
  @State isShow: boolean = false

  @Builder
  myContent() {
    TextInput({ placeholder: '添加用户' })
  }

  build() {
    Column({
      space: 20
    }) {
      Button(`打开添加用户-${this.isShow}`)
        .onClick(() => {
          this.isShow = !this.isShow
        })
      MyDialog({
        title: '请输入用户',
        isShow: this.isShow,
        clickClose: () => {
          this.isShow = !this.isShow
        }
      }) {
        this.myContent()
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}