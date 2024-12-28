// 火车数据（只是渲染，不需要修改）
export  interface iTicketData {
  id: number
  beginTime: string //结束时间
  endTime: string //开始时间
  totalTime: string //总耗时
  TNum: string //车次
  beginStation: string //起始站点
  endStation: string //终点站点
  price: number //售价
}

@Observed
// 筛选条件数据
export class AddressModel {
  id: number
  text: string
  isSelected: boolean

  constructor(id: number, text: string, isSelected: boolean) {
    this.id = id
    this.text = text
    this.isSelected = isSelected //选中
  }
}

export const sourceData: iTicketData[] = [
  {
    id: 1,
    beginTime: '15:05',
    endTime: '15:36',
    totalTime: '31分',
    TNum: 'G319',
    beginStation: '广州南',
    endStation: '深圳北',
    price: 86
  },
  {
    id: 2,
    beginTime: '15:05',
    endTime: '16:09',
    totalTime: '1时4分',
    TNum: 'G1185',
    beginStation: '广州东',
    endStation: '深圳',
    price: 79.5
  },
  {
    id: 3,
    beginTime: '15:33',
    endTime: '16:09',
    totalTime: '36分',
    TNum: 'G1187',
    beginStation: '新塘',
    endStation: '福田',
    price: 70
  },
  {
    id: 4,
    beginTime: '16::44',
    endTime: '18:42',
    totalTime: '1时58分',
    TNum: 'C6760',
    beginStation: '广州白云',
    endStation: '福海西',
    price: 80
  },
  {
    id: 5,
    beginTime: '15:55',
    endTime: '17:51',
    totalTime: '1时56分',
    TNum: 'C6705',
    beginStation: '广州',
    endStation: '深圳机场',
    price: 78
  },
  {
    id: 6,
    beginTime: '20:34',
    endTime: '22:13',
    totalTime: '1时39分',
    TNum: 'C6707',
    beginStation: '广州北',
    endStation: '沙井西',
    price: 92.5
  }
]

