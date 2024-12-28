import { ReplyItem } from "../model/listData"

@Component
export default struct CommentItem {
  @Prop commentData: ReplyItem = {
    id: 0,
    avatar: "",
    author: "",
    content: "",
    time: "",
    area: "",
    likeNum: 0,
    likeFlag: false
  }
  like = () => {

  }

  build() {
    Row() {
      Image(this.commentData.avatar)
        .width(32)
        .height(32)/**
         * 为了不阻塞，图片一般是分开加载的
         * syncLoad(true) 避免更新数据后图片闪烁
         * 建议加载尺寸较小的图片时，设置为true 将原来的图片加载，直接提到主线程执行
         */
        .syncLoad(true)
        .borderRadius(16)
      Column({ space: 10 }) {
        Text(this.commentData.author)
          .fontWeight(600)
        Text(this.commentData.content)
          .lineHeight(20)
          .fontSize(14)
          .fontColor("#565656")

        Row() {
          Text(`${this.commentData.time} . IP属地 ${this.commentData.area}`)
            .fontColor("#c3c4c5")
            .fontSize(12)
          Row() {
            Image($r('app.media.like'))
              .width(14)
              .aspectRatio(1)
              .onClick(() => {
                this.like()
              })
              .fillColor(this.commentData.likeFlag ? Color.Red : "#c3c4c5") //  "#c3c4c5" 或 red

            Text(`${this.commentData.likeNum}`)
              .fontSize(12)
              .margin({
                left: 5
              })
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)
      .padding({
        left: 15,
        right: 5
      })
    }
    .justifyContent(FlexAlign.Start)
    .alignItems(VerticalAlign.Top)
    .width('100%')
    .padding(15)
  }
}