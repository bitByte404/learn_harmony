import { window } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  onPageShow(): void {
    window.getLastWindow(getContext(this), (err, data) => {
      if (!err.code) {
        data.setWindowLayoutFullScreen(true);
      }
    })
  }

  build() {
    Column() {
      Stack({
        alignContent: Alignment.Bottom
      }) {
        Column() {
          Row() {
            Row({ space: 6 }) {
              Image('https://cdn.nlark.com/yuque/0/2024/svg/811605/1710324413958-39d290c0-cb46-40fe-8c4d-28bdd5732696.svg')
                .width(33)
              Column({ space: 2 }) {
                Text('QQ音乐')
                  .fontSize(16)
                Text('打开APP收藏下载')
                  .fontSize(14)
                  .fontColor(Color.Grey)
              }
            }

            Text('下载APP')
              .height(25)
              .width(86)
              .borderWidth(1)
              .textAlign(TextAlign.Center)
              .borderRadius(12)
              .borderColor(Color.Grey)
          }
          .justifyContent(FlexAlign.SpaceBetween)
          .height(54)
          .padding({
            left: 16,
            right: 14,
            top: 14
          })
          .width('100%')

          Row() {
            Column({ space: 4 }) {
              Text('推荐')
                .fontColor(Color.Grey)
                .fontSize(16)
              Row() {
              }
              .visibility(Visibility.Hidden)
              .backgroundColor('rgb(34, 213, 156)')
              .height(3)
              .width(20)
              .borderRadius(4)
            }

            Column({ space: 4 }) {
              Text('排行')
                .fontColor('rgb(34, 213, 156)')
                .fontSize(16)
              Row() {
              }
              .backgroundColor('rgb(34, 213, 156)')
              .height(3)
              .width(20)
              .borderRadius(4)
            }
          }
          .height(42)
          .width('100%')
          .justifyContent(FlexAlign.SpaceAround)

          Scroll() {
            Column({ space: 3 }) {
              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')

              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)
                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')

              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')

              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')


              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')

              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')

              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')

              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')


              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')


              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')


              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')


              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')


              Row() {
                Column() {
                  Text('飙升榜')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(16)
                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)


                  Text() {
                    Span('1.')
                      .fontWeight(FontWeight.Bold)
                    Span('Love wins all-')
                    Span('IU')
                      .fontColor(Color.Grey)
                  }
                  .fontSize(14)

                }
                .backgroundColor(Color.White)
                .padding({
                  top: 8,
                  left: 8,
                  bottom: 8
                })
                .height('100%')
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Image('https://cdn.nlark.com/yuque/0/2024/png/811605/1710324387117-c8736ba9-3f99-4ff3-833f-79a4427bb497.png?x-oss-process=image%2Fformat%2Cwebp')
                  .width('100')
                  .borderRadius({
                    topRight: 8,
                    bottomRight: 8
                  })

                Text('每日更新')
                  .fontColor(Color.White)
                  .fontSize(10)
                  .position({
                    top: 4,
                    right: 4
                  })
                Row() {
                  Image($r('app.media.play'))
                    .height(10)
                    .fillColor(Color.White)
                  Text('1000万')
                    .fontColor(Color.White)
                    .fontSize(10)
                }
                .position({
                  bottom: 4,
                  right: 4
                })
              }
              .borderRadius(8)
              .width('100%')
              .height(100)
              .padding(12)
              .backgroundColor('#F9F9F9')
            }
          }
          .layoutWeight(1)
        }
        .backgroundColor('#F9F9F9')

        Row({ space: 8 }) {
          Image('https://cdn.nlark.com/yuque/0/2024/svg/811605/1710324413958-39d290c0-cb46-40fe-8c4d-28bdd5732696.svg')
            .height(30)
          Text('安装QQ音乐 发现更多精彩')
            .fontSize(14)
        }
        .backgroundColor(Color.White)
        .borderRadius(20)
        .width('65%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding(8)
        .margin({ bottom: 20 })
      }
    }
    .width('100%')
    .height('100%')
  }
}