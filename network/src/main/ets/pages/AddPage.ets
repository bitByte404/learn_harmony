import { http } from '@kit.NetworkKit'
import { router } from '@kit.ArkUI'
import { creator } from './index5_delete'

export const req = http.createHttp()

// 后端返回数据不一定都需要，只定义需要的类型就行了
interface AddRes {
  message: string
}

@Entry
@Component
struct BookShelf_Add {
  @State bookname: string = ''
  @State author: string = ''
  @State publisher: string = ''

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
            if (this.bookname.trim() == ''
              || this.author.trim() == ''
              || this.publisher.trim() == ''
            ) {
              AlertDialog.show({
                message: '新增图书信息不能为空'
              })
              return
            }
            req.request('https://hmajax.itheima.net/api/books', {
              method: http.RequestMethod.POST,
              header: {
                contentType: 'application/json'
              },
              extraData: {
                bookname: this.bookname,
                author: this.author,
                publisher: this.publisher,
                creator: creator
              }
            })
              .then((res) => {
                const addRes = JSON.parse(res.result.toString()) as AddRes
                AlertDialog.show({
                  message: `${addRes.message}`
                })
                router.back()
              })
          })

      }
      .padding(20)
    }
    .title('新增图书')
    .titleMode(NavigationTitleMode.Mini)
    .backButtonIcon($r('app.media.ic_public_arrow_left'))
  }
}