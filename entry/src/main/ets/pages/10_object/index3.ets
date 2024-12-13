import { it } from '@ohos/hypium'

@Entry
@Component
struct Index {
  @State stuList: Student[] = [
    {
      name: '小红',
      age: 18
    },

    {
      name: '小明',
      age: 19
    },

    {
      name: '大强',
      age: 18
    }
  ]

  build() {
    Column({ space: 4 }) {
      ForEach(this.stuList, (stu: Student, index) => {
        Row({ space: 4 }) {
          Row({ space: 4 }) {
            Text(`姓名：${stu.name}`)
            Text(`年龄：${stu.age}`)
          }

          Button('年龄+1')
            .onClick(() => {
              // stu.age++
              // 鸿蒙中 @State装饰的数据，默认只会对第一层进行修改监听
              // 所以stu.age++ 相当于修改了第二层数据
              // 重点：需要替换整个对象
              this.stuList[index] = {
                name: stu.name,
                age: stu.age++
              }
            })
            .backgroundColor(Color.Red)
        }
        .padding(10)
        .justifyContent(FlexAlign.SpaceBetween)
        .width('100%')
        .height('80')
        .borderRadius(8)
        .backgroundColor(Color.Orange)
      })

      Button('清空')
        .onClick(() => {
          this.stuList = []
        })
    }
    .padding(10)
    .width('100%')
    .height('100%')
  }
}

interface Student {
  name: string,
  age: number
}