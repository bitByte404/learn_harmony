import axios, { AxiosResponse } from '@ohos/axios'
import { http } from '@kit.NetworkKit';

interface CityRes {
  message: string
  list: string[]
}

// 1. 创建请求的实例 - 通用性
const instance = axios.create({
  baseURL: 'https://hmajax.itheima.net', // 设置请求基地址
  // timeout: 1000,
  // headers: {}
})

export interface RegisterModel {
  /**
   * 业务状态码, 10000成功, 10001-无账号/密码, 10002-密码位数不够, 10003-用户名位数不够, 10005-用户名被占用
   */
  code: number;

  /**
   * 响应数据
   */
  data: Data;

  /**
   * 响应消息
   */
  message: string;
}

/**
 * 响应数据
 */
export interface Data {
  /**
   * 用户名
   */
  account: string;

  /**
   * 用户id
   */
  id: string;
}

interface User {
  username: string
  password: string
}

@Entry
@Component
struct Index {
  @State cityList: string[] = []

  build() {
    Column({ space: 20 }) {
      Button('获取新闻')
        .onClick(async () => {
          const res: AxiosResponse<CityRes> = await instance.get('/api/news')
          AlertDialog.show({ message: JSON.stringify(res.data) })
        })
      Button('获取笑话')
        .onClick(async () => {
          // <string, AxiosResponse<string>, null>
          // 响应的数据
          // 响应体的数据 (完整 - 经过axios包装过的对象)
          // 请求体的数据 get不需要传
          // axios.get /*<string, AxiosResponse<string>, null>*/(`https://api-vue-base.itheima.net/api/joke`)
          //   .then((res: AxiosResponse<string>) => {
          //     AlertDialog.show({
          //       message: res.data
          //     })
          //   })

          const res: AxiosResponse<string> =
            await axios.get(`https://api-vue-base.itheima.net/api/joke`)
          AlertDialog.show({
            message: res.data
          })
        })

      Button('获取城市')
        .onClick(async () => {
          const res: AxiosResponse<CityRes> = await axios.get(`https://hmajax.itheima.net/api/city`, {
            params: {
              pname: '安徽省'
            }
          })
          this.cityList = res.data.list
        })

      Button('注册功能-POST请求')
        .onClick(async () => {
          const res: AxiosResponse<RegisterModel> =
            // post后面泛型传递三个参数
            // 一般只需要传递一个，防止报错即可
            await instance
              .post<RegisterModel, AxiosResponse<RegisterModel>, User>('/api/register',
                { username: 'chen', password: 'hhhhhhhh' })
          AlertDialog.show({
            message: '用户名：' + res.data.data.account + '请求状态：' + res.data.message
          })
        })

      Text(this.cityList.join('/'))

      Button('获取城市-通用写法')
        .onClick(async () => {
          const res: AxiosResponse<CityRes> = await instance({
            url: '/api/news',
            method: 'GET',
          })
          AlertDialog.show({
            message: JSON.stringify(res.data)
          })
        })

      // axios
      // 1. 返回的数据是对象，不需要通过JSON.parse() 进行转换
      // 2. get请求 查询参数是中文，不需要通过encodeURIComponent() 进行转换 直接传中文字符
    }
    .padding({
      top: 20
    })
    .width('100%')
    .height('100%')
  }
}