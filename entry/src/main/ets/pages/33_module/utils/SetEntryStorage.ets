import { storage } from '../../../entryability/EntryAbility'

// 只有在组件范围内，才能使用this访问状态变量，其他范围无法访问到状态变量
// 以下是关于 storage 操作的封装

export function add50() {
  let countLink = storage.link<number>('count')
  let count = countLink.get()
  countLink.set(count + 50)
}

export function add100() {
  let countLink = storage.link<number>('count')
  let count = countLink.get()
  countLink.set(count + 100)
}

export function sub50() {
  let countLink = storage.link<number>('count')
  let count = countLink.get()
  countLink.set(count - 50)
}