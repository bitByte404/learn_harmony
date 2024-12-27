import CommentItem from './component/CommentItem'
import HmNavBar from './component/HmNavBar'
import ReplyCount from './component/ReplyCount'
import ReplyInput from './component/ReplyInput'
import { ReplyData, ReplyItem } from './model/listData'

// 知乎评论界面
@Entry
@Component
struct ZhiHu {
  /**
   * 状态提升：
   * 当多个组件，共用同一个状态
   * 且变化了希望实习同步，
   * 可以将状态提升到公共的父组件
   */
  // 所以将下面数据放在了父组件中
  @State commentList: ReplyItem[] = ReplyData.getCommentList()
  @State rootComment: ReplyItem = ReplyData.getRootComment()
  @State replyCount: number = this.commentList.length

  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      Column() {
        Scroll() {
          Column() {
            // 顶部组件
            HmNavBar()
            // 顶部评论
            CommentItem({
              commentData: this.rootComment,
              like: () => {
                this.rootComment = {
                  id: this.rootComment.id,
                  avatar: this.rootComment.avatar,
                  author: this.rootComment.author,
                  content: this.rootComment.content,
                  time: this.rootComment.time,
                  area: this.rootComment.area,
                  likeNum: this.rootComment.likeFlag ? this.rootComment.likeNum-- :
                    this.rootComment.likeNum++,
                  likeFlag: !this.rootComment.likeFlag
                }
              }
            })
            // 分割线
            Divider()
              .strokeWidth(6)
              .color("#f4f5f6")
            // 回复数
            ReplyCount({
              replyCount: this.commentList.length
            })

            // 回复评论列表
            ForEach(this.commentList, (item: ReplyItem, index) => {
              CommentItem({
                commentData: item,
                like: () => {
                  this.commentList.splice(index, 1, {
                    id: this.commentList[index].id,
                    avatar: this.commentList[index].avatar,
                    author: this.commentList[index].author,
                    content: this.commentList[index].content,
                    time: this.commentList[index].time,
                    area: this.commentList[index].area,
                    likeNum: this.commentList[index].likeFlag ? this.commentList[index].likeNum - 1 :
                      this.commentList[index].likeNum + 1,
                    likeFlag: !this.commentList[index].likeFlag
                  })
                }
              })
            })
          }
          .width('100%')
          .backgroundColor(Color.White)
        }
        .padding({
          bottom: 60
        })
        .edgeEffect(EdgeEffect.Spring)
        .scrollBar(BarState.Off)
      }
      .height('100%')

      ReplyInput({
        replyCallback: (content: string) => {
          let now = new Date()
          let time = `${now.getMonth() + 1}-${now.getDate()}`
          this.commentList
            .unshift({
              id: 1,
              avatar: $r('app.media.avatar'),
              author: '帅锅锅',
              content: content,
              time: time,
              area: '重庆',
              likeNum: 0,
              likeFlag: false
            })
          this.replyCount = this.commentList.length
        }
      })
    }
    .height('100%')
  }
}







