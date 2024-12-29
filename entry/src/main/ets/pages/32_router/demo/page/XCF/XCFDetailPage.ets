import { Food, FoodList } from '../../data/FoodData';
import { router } from '@kit.ArkUI';
import { Category } from '../../data/CategoryData';


@Entry
@Component
struct CategoryPage {
  // 渲染食物列表
  foods: Food[] = []
  category: Category = {
    id: '',
    title: '',
    cover: ''
  }

  aboutToAppear(): void {
    // 接收路由传递而来的数据
    this.category = router.getParams() as Category
    this.foods = FoodList.filter(item => item.categoryId == this.category.id)
  }

  onPageShow(): void {
    console.log('cw - onPageShow')
  }

  onPageHide(): void {
    console.log('cw - onPageHide')
  }

  onBackPress(): boolean | void {
    console.log('cw - onBackPress')
    // AlertDialog.show({
    //   title: "确定返回？",
    //   message: "你要返回？",
    //   confirm: {
    //     value: "确认",
    //     action: () => {
    //       return false
    //     },
    //   },
    // })
    // return true
  }

  build() {
    Column() {
      // 顶部
      TopCom({
        category: this.category
      })

      // 列表
      List({ space: 20 }) {
        ForEach(this.foods, (food: Food) => {
          ListItem() {
            Row() {
              Image(food.cover)
                .width(150)
                .height(110)
                .borderRadius(10)
              Column() {
                Text(food.title)
                Text() {
                  Span(`评分:${food.score}    `)
                  Span(`${food.count} 人做过`)
                }
                .fontSize(12)

                Row({ space: 10 }) {
                  // 作者头像
                  Image(food.author.avatar)
                    .width(20)
                    .height(20)
                    .borderRadius(10)
                  // 作者昵称
                  Text(food.author.nickname)
                    .fontSize(10)
                    .fontColor(Color.Gray)
                }
              }
              .alignItems(HorizontalAlign.Start)
              .justifyContent(FlexAlign.SpaceBetween)
              .layoutWeight(1)
              .padding({ top: 5, bottom: 5, left: 10 })
              .height(110)
            }
          }
        })
      }
      .padding(20)
      .layoutWeight(1)
    }
    .height('100%')
  }
}

@Component
struct TopCom {
  aboutToAppear(): void {
    console.log('组件要构建了')
  }

  aboutToDisappear(): void {
    console.log('组件要销毁了')
  }

  category: Category = {
    id: '',
    title: '',
    cover: ''
  }

  build() {
    Stack() {
      // 顶部封面
      Image(this.category.cover)
        .height('100%')
        .width('100%')
        .sharedTransition(`${this.category.id}`, { duration: 500 })
      Column() {
        // 返回按钮
        Image($r('app.media.ic_public_arrow_left'))
          .fillColor(Color.White)
          .width(30)
          .onClick(() => {
            router.back()
          })

        // 顶部标题
        Text(`${this.category.title}`)
          .fontColor(Color.White)
          .fontSize(30)
      }
      .justifyContent(FlexAlign.SpaceAround)
      .alignItems(HorizontalAlign.Start)
      .padding(20)
      .backgroundColor('rgba(0,0,0,0.4)')
      .width('100%')
      .height('100%')
    }
    .height(220)
  }
}