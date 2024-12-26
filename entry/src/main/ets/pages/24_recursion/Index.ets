// 递归：自己调用自己，需要有结束条件
let count: number = 5

function tellStroy() {
  if (count > 0) {
    console.log('从前有座山')
    count--
    tellStroy()
  }
}

tellStroy()

interface Food {
  name: string
  children?: Food[]
  info?: string[]
}

const foodData: Food[] = [
  {
    name: '肉类',
    info: ['牛肉', '鸡肉', '鸭肉']
  },
  {
    name: '蔬菜',
    children: [
      {
        name: '叶菜类',
        info: ['白菜', '菠菜']
      },
      {
        name: '块根类',
        info: ['土豆', '红薯']
      },
    ]
  },
  {
    name: '面食类',
    children: [
      {
        name: '饺子类',
        info: ['水饺', '煎饺', '蒸饺']
      },
      {
        name: '面条类',
        children: [
          {
            name: '中餐面条',
            info: ['挂面', '板面', '拉面', '阳春面', '重庆小面']
          },
          {
            name: '西式面条',
            info: ['意大利面', '日式拉面', '越南河粉']
          }
        ]
      },
    ]
  }
]

function getFoods(foods: Food[]): string[] {
  const totalFoods: string [] = [] // 收集所有的扁平数组项


  // 代码补全位置
  const setFoods = (foods: Food[]) => {
    for (let i = 0; i < foods.length; i++) {
      let foodItem = foods[i]
      if (foodItem.info) {
        totalFoods.push(...foodItem.info)
      }
      if (foodItem.children) {
        setFoods(foodItem.children)
      }
    }
  }
  setFoods(foods)

  return totalFoods
}


console.log('结果', `${getFoods(foodData)}`)

// 所有 info 的数据[...]


@Entry
@Component
struct Index {
  build() {
    Column() {

    }
    .width('100%')
    .height('100%')
  }
}