import { http } from '@kit.NetworkKit'

interface ChatRes {
  message: string
  data: ChatResponseData
}

interface ChatResponseData {
  type: number
  info: ChatObj
}

interface ChatObj {
  text: string
}

interface chatBubble {
  content: string
  self: boolean
  id: number
}

const req = http.createHttp()

PersistentStorage.persistProp<chatBubble[]>('chat', [])

@Entry
@Component
struct ChatPage {
  @StorageLink('chat')
  chatList: chatBubble[] = []
  @State text: string = ''

  @Builder
  chatHeader(user: string = '知心姐姐 ') {
    Row({ space: 5 }) {
      // Text('😀')
      Text('知心姐姐')
    }
    .margin(8)
    .justifyContent(FlexAlign.Center)
    .height(48)
    .width('100%')
  }

  @Builder
  chatContent() {
    List() {
      ForEach(this.chatList, (item: chatBubble, index) => {
        ListItem() {
          Row({ space: 5 }) {
            if (item.self) {
              Text(item.content)
                .backgroundColor('#77F276')
                .padding(10)
                .flexShrink(1)
                .borderRadius(5)
              Image($r('app.media.avatar1'))
                .width(38)
                .borderRadius(5)
            } else {
              Image($r('app.media.avatar2'))
                .width(38)
                .borderRadius(5)
              Text(item.content)
                .backgroundColor(Color.White)
                .padding(10)
                .flexShrink(1)
                .borderRadius(5)
            }
          }
          .width('100%')
          .padding({
            left: 14, right: 14, bottom: 14
          })
          .justifyContent(item.self ? FlexAlign.End : FlexAlign.Start)
        }
      })
    }
    .layoutWeight(1)
  }

  async chatToRobot(text: string) {
    const res = await req.request(`https://hmajax.itheima.net/api/robot?spoken=${text}`)
    const chatRes = JSON.parse(res.result.toString()) as ChatRes
    let item: chatBubble = {
      content: chatRes.data.info.text,
      self: false,
      id: Number(Date.now())
    }
    this.chatList.push(item)
  }

  @Builder
  chatBottom() {
    Row({ space: 5 }) {
      TextInput({
        text: $$this.text
      })
        .layoutWeight(1)
        .borderRadius(8)
      Text('发送')
        .fontColor(Color.White)
        .padding(8)
        .borderRadius(6)
        .backgroundColor('#ff4aca49')
        .onClick(() => {
          if (this.text.trim() != '') {
            let item: chatBubble = {
              content: this.text,
              self: true,
              id: Number(Date.now())
            }
            this.chatList.push(item)
            this.chatToRobot(this.text)
            this.text = ''
          }
        })
    }
    .padding(6)
    .backgroundColor(Color.White)
    .width('100%')
    .height(48)
  }

  build() {
    Column() {
      Column() {
        this.chatHeader()
        this.chatContent()
        this.chatBottom()
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .height('100%')
      .width('100%')
      .backgroundColor('#F0F0F0')
    }
  }
}