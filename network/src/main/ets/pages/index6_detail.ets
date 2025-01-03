import { promptAction, router, SplitLayout } from '@kit.ArkUI'
import { http } from '@kit.NetworkKit'


export interface Book {
  id: number
  bookname: string
  author: string
  publisher: string
}

interface BookRes {
  message: string
  data: Book[]
}

export const creator: string = 'wuliner'

const req = http.createHttp()

@Entry
@Component
struct Day02_01_BookShelf {
  creator: string = creator
  @State books: Book[] = []
  @State isLoading: boolean = true

  getBooks() {
    // 请求传参如果可能是中文，需要使用：encodeURIComponent
    req.request(`https://hmajax.itheima.net/api/books?creator=` + encodeURIComponent(this.creator))
      .then((res) => {
        const bookRes = JSON.parse(res.result.toLocaleString()) as BookRes
        this.books = bookRes.data
      })
  }

  // aboutToAppear: 只要组件不销毁，不会再次执行
  // onPageShow: 页面打开了，就会执行（正常页面显示，包括页面切前台）
  onPageShow(): void {
    this.getBooks()
  }

  build() {
    Column() {
      // 头部
      this.HeaderBuilder()
      // 没有数据时

      if (this.books.length == 0) {
        LoadingProgress()
          .width(50)
      } else {
        // 有数据时
        List({ space: 15 }) {
          ForEach(this.books, (item: Book) => {
            ListItem() {
              bookItem({ data: item })
                .onClick(() => {
                  router.pushUrl({
                    url: 'pages/EditPage',
                    params: {
                      id: item.id
                    }
                  })
                })
            }
            .swipeAction({
              end: () => {
                this.itemEnd(item)
              },
              edgeEffect: SwipeEdgeEffect.Spring
            })
            .onClick(() => {

            })
          })
        }
        .padding(20)
        .layoutWeight(1)
      }


    }
    .height('100%')
    .width('100%')
  }

  @Builder
  HeaderBuilder() {
    Row() {
      Image($r('app.media.ic_public_drawer_filled'))
        .width(20);

      Text('我的书架')
        .fontSize(25)

      Image($r('app.media.ic_public_add'))
        .width(20)
        .onClick(() => {
          router.pushUrl({
            url: 'pages/AddPage'
          })
        })
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .height(60)
    .padding(10)
    .border({ width: { bottom: 2 }, color: '#f0f0f0' })
    .backgroundColor(Color.White)
  }

  @Builder
  itemEnd(item: Book) {
    Row() {
      Button('删除')
        .type(ButtonType.Normal)
        .backgroundColor('#da3231')
        .onClick(() => {
          promptAction.showDialog({
            message: `确认要删除${item.bookname}这本书吗？`,
            title: '温馨提示',
            alignment: DialogAlignment.Bottom,
            buttons: [{ text: '取消', color: '#000000' }, { text: '确认', color: 'red' }]
          })
            .then(data => {
              // 确认删除
              if (data.index == 1) {
                promptAction.showToast({
                  message: '删除该图书'
                })
                req.request(`https://hmajax.itheima.net/api/books/${item.id}`, {
                  method: http.RequestMethod.DELETE
                })
                  .then(() => {
                    promptAction.showToast({
                      message: '删除成功'
                    })
                    this.getBooks()
                  })
              }
            })
        })
        .height('100%')
    }

  }
}

@Component
struct bookItem {
  data: Partial<Book> = {}

  build() {
    Row({ space: 10 }) {
      Image($r('app.media.ic_public_cover'))
        .width(108)
        .height(108)
      Column({ space: 5 }) {
        Text('书名：' + this.data.bookname)
          .fontSize(20)
        Text('作者：' + this.data.author)
          .fontSize(14)
          .fontColor(Color.Gray)
        Blank()
        Text('出版社: ' + this.data.publisher)
          .fontSize(14)
          .fontColor(Color.Gray)
      }
      .padding({ top: 10, bottom: 10 })
      .height(108)
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)
    }
  }
}