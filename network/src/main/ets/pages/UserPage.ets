import photoAccessHelper from '@ohos.file.photoAccessHelper'
import fs from '@ohos.file.fs';
import { request } from '@kit.BasicServicesKit';
import { http } from '@kit.NetworkKit';
import { Response, UploadResponse } from './UploadPage';
import { JSON } from '@kit.ArkTS';

export interface UserResponse {
  data: UserData
}

export interface UserData {
  avatar: string
  email: string
  nickname: string
  gender: number
  desc: string
}

const req = http.createHttp()
const creator: string = 'wuliner'

@Entry
@Component
struct Day02_03_UserInfo_Home {
  @State avatar: ResourceStr = $r('app.media.ic_public_joke_logo')
  // 使用Partial转为可选
  @State userData: Partial<UserData> = {}

  onPageShow(): void {
    this.requestUserInfo()
  }

  requestUserInfo() {
    req.request(`https://hmajax.itheima.net/api/settings?creator=${creator}`)
      .then(res => {
        this.userData = (JSON.parse(res.result.toString()) as UserResponse).data
      })
  }

  build() {
    Stack() {
      Image($r('app.media.ic_public_nav_bg'))
      Column() {
        this.navBarBuilder()
        Blank()
        this.contentBuilder()
        TextInput({ text: this.userData.nickname })
      }
      .height('100%')
    }

  }

  @Builder
  contentBuilder() {
    Column() {
      // 头像+菜单
      this.userInfoBuilder()
      // 分割线
      Divider()
        .strokeWidth(10)
        .color('#f5f7fa')

      // tabs区域（无功能）
      Row() {
        Text('创作')
          .border({ width: { bottom: 2 }, color: '#0094ff' })
          .padding({ bottom: 5 })
        Text('动态')
          .border({ width: { bottom: 2 }, color: Color.Transparent })
          .padding({ bottom: 5 })
        Text('赞同')
          .border({ width: { bottom: 2 }, color: Color.Transparent })
          .padding({ bottom: 5 })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)
      .padding(15)

      // 筛选区域
      Row() {
        FilterItem({ title: '全部', isSelected: true })
        FilterItem({ title: '回答 0' })
        FilterItem({ title: '视频 0' })
        FilterItem({ title: '想法 0' })
        FilterItem({ title: '文章 0' })
        FilterItem({ title: '提问 0' })
      }
      .justifyContent(FlexAlign.SpaceAround)
      .width('100%')
      .margin({ bottom: 10 })

      // 筛选内容区域
      Column() {
        Text('没有更多内容')
          .fontSize(12)
          .fontColor(Color.Gray)
          .margin({ top: 30 })
      }
      .layoutWeight(1)
      .backgroundColor('#f5f7fa')
      .width('100%')

    }
    .width('100%')
    // 通过 calc计算剩余尺寸
    .height('calc(100% - 150vp)')
    .backgroundColor(Color.White)
    .borderRadius({ topLeft: 20, topRight: 20 })
  }

  updateImage() {
    const photoSelectOptions = new photoAccessHelper.PhotoSelectOptions()
    photoSelectOptions.MIMEType = photoAccessHelper.PhotoViewMIMETypes.IMAGE_TYPE
    photoSelectOptions.maxSelectNumber = 1

    const photoViewPicker = new photoAccessHelper.PhotoViewPicker()
    photoViewPicker.select(photoSelectOptions).then(res => {
      const context = getContext(this)
      const uri = res.photoUris[0]
      const fileType = 'jpg'
      const fileName = Date.now() + '.' + fileType
      const copyFilePath = context.cacheDir + '/' + fileName
      const file = fs.openSync(uri, fs.OpenMode.READ_ONLY)
      fs.copyFileSync(file.fd, copyFilePath)

      let files: Array<request.File> = [
        {
          filename: fileName,
          type: fileType,
          name: 'img',
          uri: `internal://cache/${fileName}`
        }
      ]

      request.uploadFile(context, {
        url: 'https://hmajax.itheima.net/api/uploadimg',
        method: http.RequestMethod.POST,
        files,
        data: [],
        header: {
          contentType: 'multipart/form-data',
        }
      })
        .then(res => {
          res.on('headerReceive', value => {
            const uploadRes = value as UploadResponse
            const response = JSON.parse(uploadRes.body) as Response
            this.avatar = response.data.url
          })
        })
    })
  }

  @Builder
  userInfoBuilder() {
    // 头像+菜单
    Row() {
      Image(this.userData.avatar)
        .width(70)
        .height(70)
        .borderRadius(35)
        .border({ width: 1, color: Color.White })
        .onClick(() => {
          // this.updateImage()
        })
      NumInfo({ num: 66, title: '获赞' })
      NumInfo({ num: 1234, title: '被关注' })
      NumInfo({ num: 26, title: '关注' })
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Bottom)
    .translate({ y: -10 })
    .padding(15)

    // 昵称 + 性别
    Row({ space: 10 }) {
      Text() {
        // 用户昵称
        Span(this.userData.nickname)
          .fontWeight(FontWeight.Bold)
          .fontSize(18)
        // 性别 // ImageSpan($r('app.media.ic_public_male')) 男孩子
        ImageSpan($r(this.userData.gender ? 'app.media.ic_public_male' : 'app.media.ic_public_female'))// 女孩子
          .width(20)
          .margin({ left: 5 })
      }

      Blank()
      Text('编辑资料')
        .fontSize(12)
        .padding(5)
        .backgroundColor('#f8f8fa')
        .borderRadius(10)
        .onClick(() => {

        })
      Image($r('app.media.ic_public_input_code'))
        .fillColor(Color.Gray)
        .width(25)
        .backgroundColor('#f8f8fa')
        .padding(5)
        .borderRadius(5)
    }
    .width('100%')
    .padding({
      left: 15,
      right: 15,
      top: 0,
      bottom: 10
    })

    // 其他信息
    Column({ space: 8 }) {
      TextInfo({
        title: '简介',
        info: this.userData.desc
      })
      TextInfo({
        title: '邮箱',
        info: this.userData.email
      })
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
    .padding({ left: 15, bottom: 10 })
  }

  @Builder
  navBarBuilder() {
    Row() {
      Image($r('app.media.ic_public_arrow_left'))
        .fillColor(Color.White)
        .width(30)
      Blank()
      Row({ space: 10 }) {
        Image($r('app.media.ic_public_input_search'))
          .width(25)
          .fillColor(Color.White)
        Text('...')
          .fontSize(30)
          .fontColor(Color.White)
          .baselineOffset(15)
      }
    }
    .width('100%')
    .padding(15)
  }
}

@Component
struct FilterItem {
  title: string = ''
  isSelected: boolean = false

  build() {
    Text(this.title)
      .fontSize(12)
      .padding({
        top: 5,
        bottom: 5,
        left: 10,
        right: 10
      })
      .backgroundColor('#f5f7fa')
      .borderRadius(10)
      .fontColor(this.isSelected ? Color.Black : Color.Gray)
      .fontWeight(this.isSelected ? FontWeight.Bold : FontWeight.Normal)
  }
}

@Component
struct TextInfo {
  title: string = ''
  @Prop info: string = ''

  build() {
    Text() {
      Span(`${this.title}: `)
      Span(this.info)
    }
    .fontSize(16)
    .fontColor(Color.Gray)
  }
}


@Component
struct NumInfo {
  num: number = 0
  title: string = ''

  build() {
    Column({ space: 5 }) {
      Text(this.num.toString())
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
      Text(this.title)
        .fontColor(Color.Gray)
        .fontSize(14)
    }
  }
}