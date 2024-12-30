import { IUserInfo } from '../pages/Index'

// 消费赚积分
export function addScoreBuy() {
  let user = AppStorage.get<IUserInfo>('user')
  if (user?.score) {
    user.score += 50
  }
  // 没有使用状态装饰器修饰，需要按照下面方式修改
  AppStorage.set<IUserInfo>('user', user)
}

// 唱歌赚积分
export function addScoreSing() {
  let user = AppStorage.get<IUserInfo>('user')
  user!.score! += 20
}

// 签到赚积分
export function addScoreSignInd() {
  // 另一种修改AppStorage的方式
  const link: SubscribedAbstractProperty<IUserInfo> = AppStorage.link('user')
  let user = link.get()
  user.score += 1
  link.set(user)
}


