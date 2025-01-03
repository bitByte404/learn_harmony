import { promptAction, router } from '@kit.ArkUI'
import { req } from './AddPage'
import { Book } from './index5_delete'

interface BookParamsId {
  id: number
}

interface EditBook {
  message: string
  data: Book
}

@Entry
@Component
struct BookShelf_Edit {
  @State bookname: string = ''
  @State author: string = ''
  @State publisher: string = ''
  bookId: number = 0

  aboutToAppear(): void {
    this.bookId = (router.getParams() as BookParamsId).id
    req.request(`https://hmajax.itheima.net/api/books/${this.bookId}`)
      .then(res => {
        const resEdit = JSON.parse(res.result.toString()) as EditBook
        promptAction.showToast({
          message: '查询书籍信息成功'
        })
        this.bookname = resEdit.data.bookname
        this.author = resEdit.data.author
        this.publisher = resEdit.data.publisher
      })
  }

  build() {
    Navigation() {
      Column({ space: 10 }) {
        Row() {
          Text('图书姓名:')
          TextInput({
            placeholder: '请输入图书名字',
            text: $$this.bookname
          })
            .height(30)
            .backgroundColor(Color.Transparent)
            .layoutWeight(1)
            .padding({ left: 10, top: 0, bottom: 0 })
        }

        Divider()
        Row() {
          Text('图书作者:')
          TextInput({
            placeholder: '请输入图书作者',
            text: $$this.author
          })
            .height(30)
            .backgroundColor(Color.Transparent)
            .layoutWeight(1)
            .padding({ left: 10, top: 0, bottom: 0 })
        }

        Divider()
        Row() {
          Text('图书出版社:')
          TextInput({
            placeholder: '请输入图书出版社',
            text: $$this.publisher
          })
            .height(30)
            .backgroundColor(Color.Transparent)
            .layoutWeight(1)
            .padding({ left: 10, top: 0, bottom: 0 })
        }

        Divider()


        Button('保存')
          .width('100%')
          .margin({ top: 20 })
          .type(ButtonType.Normal)
          .borderRadius(10)
          .onClick(() => {
          })

      }
      .padding(20)
    }
    .title('修改图书')
    .titleMode(NavigationTitleMode.Mini)
    .backButtonIcon($r('app.media.ic_public_arrow_left'))
  }
}