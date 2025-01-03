/**
 * 1. 默认加载
 * 2. 下拉刷新
 * 3. 触底加载更多
 * 4. 点击返回顶部
 * */
import { http } from '@kit.NetworkKit'

const req = http.createHttp()

interface JokeRes {
  msg: string
  code: number
  data: string[]
}

@Entry
@Component
struct Day01_07_Jokes {
  @State jokes: string [] = []
  jokeNum: number = 5
  @State refreshing: boolean = false
  listScroller: Scroller = new Scroller()
  isLoadMore: boolean = false

  getJokeList() {
    req.request('https://api-vue-base.itheima.net/api/joke/list?num=' + this.jokeNum)
      .then((res) => {
        const jokeRes = JSON.parse(res.result as string) as JokeRes
        this.jokes = jokeRes.data
        // 注意：必须等数据加载成功之后，才更改刷新状态
        this.refreshing = false
      })
  }

  aboutToAppear(): void {
    this.getJokeList()
  }

  build() {
    Refresh({ refreshing: $$this.refreshing }) {
      Column() {
        // 顶部
        this.HeaderBuilder()
        // 笑话列表
        List({ space: 10, scroller: this.listScroller }) {
          ForEach(this.jokes, (joke: string) => {
            ListItem() {
              Column({ space: 10 }) {
                Text(joke.split('，')[0])
                  .fontSize(20)
                  .fontWeight(600)
                Row({ space: 15 }) {
                  titleIcon({ icon: $r('app.media.ic_public_time'), info: '2024-1-1' })
                  titleIcon({ icon: $r('app.media.ic_public_read'), info: '阅读(6666)' })
                  titleIcon({ icon: $r('app.media.ic_public_comments'), info: '评论(123)' })
                }

                Text(joke)
                  .fontSize(15)
                  .fontColor(Color.Gray)
              }
              .width('100%')
              .alignItems(HorizontalAlign.Start)
              .padding(20)

            }
            .borderRadius(10)
            .backgroundColor(Color.White)
            .shadow({ radius: 2, color: Color.Gray })
          })

          ListItem() {
            LoadingProgress()
              .width(50)
          }
          .width('100%')
        }
        .padding(10)
        .layoutWeight(1)
        .onReachEnd(() => {
          if (!this.isLoadMore) {
            // 变量控制，防止多次触发
            this.isLoadMore = true
            req.request('https://api-vue-base.itheima.net/api/joke/list?num=' + this.jokeNum)
              .then((res) => {
                const jokeRes = JSON.parse(res.result as string) as JokeRes
                this.jokes.push(...jokeRes.data)
                // 一但加载数据成功后，立马改为false
                this.isLoadMore = false
              })
          }
        })
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#f6f6f6')
    }
    .onRefreshing(() => {
      // 1. 重新发送请求，获取数据
      // 2. 修改刷新状态
      this.getJokeList()
    })
  }

  @Builder
  HeaderBuilder() {
    Row() {
      Image($r('app.media.ic_public_drawer_filled'))
        .width(25);

      Image($r('app.media.ic_public_joke_logo'))
        .onClick(() => {
          this.listScroller.scrollTo({
            xOffset: 0,
            yOffset: 0,
            animation: true
          })
        })
        .width(30)

      Image($r('app.media.ic_public_search'))
        .width(30);
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .height(60)
    .padding(10)
    .border({ width: { bottom: 2 }, color: '#f0f0f0' })
    .backgroundColor(Color.White)
  }
}

@Component
struct titleIcon {
  icon: ResourceStr = ''
  info: string = ''

  build() {
    Row() {
      Image(this.icon)
        .width(15)
        .fillColor(Color.Gray)
      Text(this.info)
        .fontSize(14)
        .fontColor(Color.Gray)
    }
  }
}