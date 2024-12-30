import { common, Want } from '@kit.AbilityKit'
import { addScoreBuy, addScoreSignInd, addScoreSing } from '../utils/scoreFns'
import { IUserInfo } from './Index'

@Entry
@Component
struct Index {
  @StorageLink('user')
  user: IUserInfo = {
    name: '',
    age: 0,
    score: 0
  }

  build() {
    Column({ space: 10 }) {
      Text(`积分：${this.user.score}`)
        .fontSize(50)
      Button('消费任务 +50')
        .onClick(() => {
          addScoreBuy()
        })
      Button('唱歌任务 +20')
        .onClick(addScoreSing)
      Button('签到任务 +1')
        .onClick(addScoreSignInd)
    }
    .height('100%')
    .width('100%')
  }
}