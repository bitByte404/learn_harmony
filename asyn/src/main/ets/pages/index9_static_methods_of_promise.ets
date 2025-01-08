import { http } from '@kit.NetworkKit'

@Entry
@Component
struct Index {
  build() {
    Column({ space: 10 }) {
      Button('Promise静态方法-resolve')
        .onClick(() => {
          // 快速创建一个成功的promise对象
          Promise.resolve('成功的结果')
            .then((res) => {
              AlertDialog.show({
                message: res
              })
            })

          // new Promise<String>((resolve) => {
          //   resolve('成功的结果')
          // })
        })

      Button('Promise静态方法-reject')
        .onClick(async () => {
          // 快速创建一个成功的promise对象
          // Promise.reject('失败的结果')
          //   .catch((error: string) => {
          //     AlertDialog.show({
          //       message: error
          //     })
          //   })

          try {
            await Promise.reject('失败的结果')
          } catch (e) {
            AlertDialog.show({ message: e })
          }
        })

      Button('Promise静态方法-race')
        .onClick(() => {
          const p1 = new Promise<string>((resolve, reject) => {
            setTimeout(() => {
              resolve('1')
            }, 2000)
          })

          const p2 = new Promise<string>((resolve, reject) => {
            setTimeout(() => {
              reject('2')
            }, 1000)
          })

          // Promise.race 比拼的速度，不论成功还是失败
          Promise.race([p1, p2])
            .then((res) => {
              console.log('res', res)
            })
            .catch((err: string) => {
              console.log('error', err)
            })
        })

      Button('Promise静态方法-all')
        .onClick(() => {
          const p1 = new Promise<string>((resolve, reject) => {
            setTimeout(() => {
              resolve('1')
            }, 2000)
          })

          const p2 = new Promise<string>((resolve, reject) => {
            setTimeout(() => {
              resolve('2')
            }, 1000)
          })
          const p3 = new Promise<string>((resolve, reject) => {
            setTimeout(() => {
              resolve('1')
            }, 200)
          })

          //  多个Promise返回的是全部成功的数组，或者第一个失败的结果
          // 输出结果的时机：必须等到所有的promise对象结果返回之后
          Promise.all([p1, p2, p3])
            .then((res) => {
              console.log('res', res)
            })
        })

      Button('Promise静态方法-all-测试代码')
        .onClick(() => {
          const req = http.createHttp()
          const p1 = req.request('https://hmajax.itheima.net/api/category/sub?id=1005000')
          const p2 = req.request('https://hmajax.itheima.net/api/category/sub?id=1005002')
          const p3 = req.request('https://hmajax.itheima.net/api/category/sub?id=1010000')
          Promise.all([p1, p2, p3])
            .then((res) => {
              const resList = res.map(item => item.result)
              AlertDialog.show({ message: JSON.stringify(resList) })
            })
        })
    }
    .width('100%')
    .height('100%')
  }
}