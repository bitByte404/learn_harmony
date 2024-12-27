import { text } from "@kit.ArkGraphics2D"

@Component
export default struct ReplyInput {
  @State inputText: string = ''
  replyCallback = (content: string) => {

  }

  build() {
    Row() {
      TextInput({ placeholder: '回复', text: $$this.inputText })
        .layoutWeight(1)
        .backgroundColor("#f4f5f6")
        .height(40)
      Text('发布')
        .fontColor("#6ecff0")
        .fontSize(14)
        .margin({
          left: 10
        })
        .onClick(() => {
          if (this.inputText) {
            this.replyCallback(this.inputText)
            this.inputText = ''
          }
        })
    }
    .padding(10)
    .backgroundColor(Color.White)
    .border({
      width: { top: 1 },
      color: "#f4f5f6"
    })
  }
}