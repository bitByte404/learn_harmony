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

export interface Student {
  name: string
  age: number
}

// 至刻度
Environment.envProp('colorMode', ColorMode.LIGHT)


// 初始化数据
// AppStorage.setOrCreate('user', userInfo)
// 使用PersistentStorage 持久化保存数据
//  后续使用appStorage的api操作
PersistentStorage.persistProp('user', userInfo)
// PersistentStorage 不支持嵌套对象，第二层更新不能自动更新
// 可以使用splice替换数据从而更新数据
PersistentStorage.persistProp('stuList', [{ name: 'zs', age: 19 }, { name: 'cw', age: 20 }])

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
  @StorageLink('stuList')
  stuList: Student[] = []
  @StorageProp('colorMode')
  colorMode: ColorMode = ColorMode.LIGHT

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
      ForEach(this.stuList, (item: Student, index) => {
        Row({ space: 10 }) {
          Text(item.name).fontSize(30)
          Text(`${item.age}`).fontSize(30)
          Button('+1')
            .onClick(() => {
              item.age++
              this.stuList.splice(index, 1, item)
            })
        }
      })

      Text(`色彩模型 -深色/浅色 ${this.colorMode == ColorMode.LIGHT ? '浅色' : '深色'}`)
    }
    .height('100%')
    .width('100%')
  }
}