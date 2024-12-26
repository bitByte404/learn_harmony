@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        Text('兴趣爱好')
        // 同意管理同group的checkBox
        CheckboxGroup({
          group: 'hobby'
        })
          .onChange((event: CheckboxGroupResult) => {
            console.log(JSON.stringify(event.name))
            console.log(JSON.stringify(event.status)) // 0，1， 2
          })
      }

      Row() {
        Checkbox({
          group: 'hobby',
          name: 'sing'
        })
        Text('唱歌')
      }

      Row() {
        Checkbox({
          group: 'hobby',
          name: 'dance'
        })
        Text('跳舞')
      }

      Row() {
        Text('学习的科目')
        CheckboxGroup({
          group: 'lesson'
        })
      }

      Row() {
        Checkbox({
          group: 'lesson'
        })
        Text('科目三')
      }

      Row() {
        Checkbox({
          group: 'lesson'
        })
        Text('科目四')
      }

      Column() {
        Row() {
          CheckboxGroup({ group: 'vege' })
            .checkboxShape(CheckBoxShape.ROUNDED_SQUARE)
          Text('全选')
        }
        .margin({ left: -18 })

        Row() {
          Checkbox({ group: 'vege' })
          Text('西瓜')
        }

        Row() {
          Checkbox({ group: 'vege' })
          Text('西红柿')
        }

        Row() {
          Checkbox({ group: 'vege' })
          Text('西兰花')
        }

        Row() {
          Checkbox({ group: 'vege' })
          Text('西葫芦')
        }
      }
      .width('100%')
      .alignItems(HorizontalAlign.Start)
      .padding(20)
    }
    .width('100%')
    .height('100%')
  }
}