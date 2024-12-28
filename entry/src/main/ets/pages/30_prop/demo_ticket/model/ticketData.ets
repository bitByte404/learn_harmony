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

