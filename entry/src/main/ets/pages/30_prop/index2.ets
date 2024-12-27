// 修改数据状态 => 没有联动更新 list 切换场景
// builder 嵌套不要太深 => 会有bug
// 复杂度高了  => 封装组件为主

@Component
struct HellCom {
  // 普通传值， 默认是不联动的，父组件修改了，子不会更新
  // sonCar: string = ''
  // @Prop 表示父传子 传递过来的数据，父修改，子自动刷新
  @Prop sonCar: string = ''
  @Prop money: number = 0
  buyIce = (price: number) => {
  }

  build() {
    Row() {
      Text(`这是子组件${this.sonCar}-${this.money}`)
      // prop传递的数据，子组件修改了 ，不会同步给父组件
      // -> 尽量不要直接修改prop数据
      Text('{卖冰棒}')
        .onClick(() => {
          // this.money -= 5 // 本质数据是谁的，就需要谁来改
          // // 子组件只能提出请求
          this.buyIce(8)
        })
    }
    .width(200)
    .height(80)
    .border({
      width: 1,
      color: Color.Blue
    })
  }
}

@Entry
@Component
struct Index {
  @State car: string = '宝马'
  @State money: number = 100

  build() {
    Column({ space: 20 }) {
      Text(`这是父组件${this.car}-${this.money}`)
      Row() {
        Button('换车')
          .onClick(() => {
            this.car = '劳斯莱斯'
          })
        Button('洗脚')
          .onClick(() => {
            this.money -= 10
          })
      }

      // 当在某个范围内，使用了另一个组件，就形成了父子关系
      HellCom({
        sonCar: this.car,
        money: this.money,
        buyIce: (price: number) => {
          this.money -= price
        }
      })
      HellCom({
        sonCar: this.car,
        money: this.money,
        buyIce: (price: number) => {
          this.money -= price
        }
      })
    }
    .width(300)
    .height('100%')
    .margin(20)
    .border({
      width: 1,
      color: Color.Red
    })
  }
}