import { router } from '@kit.ArkUI'
import { common, Want } from '@kit.AbilityKit'

interface IObj {
  count: number
  msg: string
  desc: string
  car: Car
}

export  interface Car {
  brand: string,
  price: number
}

let localObj: IObj = {
  count: 100,
  msg: '你好',
  desc: '哈哈哈哈哈',
  car: {
    brand: '宝马',
    price: 10
  }
}

// 将数据缓存到了 LocalStorage
export const storage = new LocalStorage(localObj)

interface Person {
  name: string
  age: number
}

let obj: Record<string, Person> = {
  'myFriends': {
    name: 'zs',
    age: 18
  }
}

@Entry(storage)
  // 注册
@Component
struct Index {
  @LocalStorageLink('count')
  count: number = 0
  // 获取上下文对象(后续继续直接使用) 相当于导入一个对象，这个对象里有跳转方法
  context = getContext(this) as common.UIAbilityContext;

  build() {
    Column({
      space: 20
    }) {
      Text(`支付模块-首页导航${this.count}`)
        .fontSize(30)
      Row() {
        Button('转账')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/33_module/payothers'
            })
          })
        Button('收款')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/33_module/getmoney'
            })
          })
      }

      Button('去社区- 同模块ability跳转')
        .width('80%')
        .backgroundColor(Color.Orange)
        .onClick(() => {
          let socialWant: Want = {
            deviceId: '', // deviceId为空标识本设备
            bundleName: 'com.example.learn_harmony', // AppScope/app.json5确认
            moduleName: 'entry', // moduleName 非必选
            abilityName: 'SocialAbility', // src/main/module.json5确认
            parameters: {
              // 自定义消息
              obj: {
                name: '张三',
                age: 18,
                desc: '不错',
                money: 200
              }
            }
          }
          this.context.startAbility(socialWant)
        })

      Button('去打车 - 跨模块ability跳转')
        .width('80%')
        .backgroundColor(Color.Green)
        .onClick(() => {
          let carWant: Want = {
            deviceId: '', // deviceId为空标识本设备
            bundleName: 'com.example.learn_harmony', // AppScope/app.json5确认
            moduleName: 'CarModule', // moduleName 非必选
            abilityName: 'CarModuleAbility', // src/main/module.json5确认
            parameters: {
              // 自定义消息
              info: ''
            }
          }
          this.context.startAbility(carWant)
        })
    }
    .width('100%')
    .height('100%')
  }
}