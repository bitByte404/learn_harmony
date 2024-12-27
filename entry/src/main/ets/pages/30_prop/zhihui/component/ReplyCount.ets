@Component
export default struct ReplyCount {
  @Prop replyCount: number = 0

  build() {
    Text() {
      Span('回复')
      Span(`${this.replyCount}`)
    }
    .padding(15)
    .fontWeight(700)
    .alignSelf(ItemAlign.Start)
  }
}