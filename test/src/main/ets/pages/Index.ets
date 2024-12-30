import { common, Want } from '@kit.AbilityKit'

export interface IUserInfo {
  name: string
  age: number
  score: number
}

let userInfo: IUserInfo = {
  name: '大伟',
  age: 20,
  score: 90
}

// 初始化数据
AppStorage.setOrCreate('user', userInfo)
AppStorage.setOrCreate('test', '这是测试文本')

@Entry
@Component
struct Index {
  context = getContext(this) as common.UIAbilityContext
  @StorageLink('user')
  user: IUserInfo = {
    name: '',
    age: 0,
    score: 0
  }
  @StorageLink('test')
  text: string = ''

  build() {
    Column({ space: 20 }) {
      Text('个人中心')
        .fontSize(50)
      Text(`姓名：chenwei${this.user.name}`).fontSize(30)
      Text(`年纪：${this.user.age}`).fontSize(30)
      Text(`积分：${this.user.score}`).fontSize(30)
      Text(`文本：${this.text}`)
      Button('去积分广场')
        .onClick(() => {
          let want: Want = {
            deviceId: '',
            bundleName: 'com.example.learn_harmony',
            abilityName: 'ScoreAbility',
            parameters: {}
          }
          this.context.startAbility(want)
        })
    }
    .height('100%')
    .width('100%')
  }
}