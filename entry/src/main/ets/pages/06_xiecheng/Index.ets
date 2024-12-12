@Entry
@Component
struct Index {
  build() {
    Scroll() {
      // 携程界面 demo
      Column() {
        // 把大的项目页面，拆分到小的模块(便于聚焦)
        // ======== 1.头部banner  =======
        Column() {
          Image($r('app.media.log'))
            .width(203)
            .height(70)
            .margin({ top: 70 })

          Text('评选规则')
            .fontColor('#f6dfc8')
            .fontSize(10)
            .textAlign(TextAlign.Center)
            .height(20)
            .width(54)
            .borderRadius({
              topLeft: 50,
              bottomLeft: 50
            })
            .position({
              right: 0,
              top: 120
            })
            .backgroundColor('#4dffe0d0')

          Image($r('app.media.banner_line'))
            .width('100%')
            .position({
              bottom: 0,
              left: 0
            })

          Row() {
            Image($r('app.media.scenery'))
              .height(80)
            Image($r('app.media.hot'))
              .height(80)
            Image($r('app.media.rank'))
              .height(80)
          }
          .margin({
            top: 21
          })
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .height(267)
        .width('100%')
        .backgroundImage($r('app.media.banner'))
        .backgroundImageSize(ImageSize.Cover)
        .backgroundImagePosition(Alignment.Center)


        Column() {
          // ========= 2. 城市和目的地 ======
          Row() {
            Row({ space: 4.5 }) {
              Text('北京')
                .fontSize(16)
                .fontColor('#ff5f2b0e')
              Image($r('app.media.ic_public_arrow_down_0'))
                .height(12)
                .fillColor(Color.White)
                .backgroundColor('#552704')
                .borderRadius(6)
                .borderRadius(6)
            }
            .justifyContent(FlexAlign.Center)
            .width(163)
            .height(36)
            .borderRadius(16)
            .linearGradient({
              direction: GradientDirection.Left,
              colors: [
                ['#ffffe2c8', 0],
                ['#ffe6af8a', 100],
              ]
            })

            Row() {
              Text('口碑目的地')
                .fontSize(16)
                .fontColor('#ff99532e')
            }
            .justifyContent(FlexAlign.Center)
            .width(163)
            .height(36)
            .borderRadius(16)
            .backgroundColor('#33f8d5b8')
          }.width('100%')

          .margin({
            top: 24
          })
          .justifyContent(FlexAlign.SpaceBetween)

          // ========== 3. 酒店等选项菜单 =======
          Row() {
            Text('酒店')
              .fontSize(16)
              .width(78)
              .height(36)
              .borderRadius(8)
              .backgroundColor('#ccffffff')
              .textAlign(TextAlign.Center)
              .shadow({
                radius: 8,
                color: '#122f1b0e',
                offsetX: 1,
                offsetY: 1
              })

            Text('景点')
              .fontSize(16)
              .width(78)
              .height(36)
              .borderRadius(8)
              .fontColor('#fff')
              .backgroundColor('#ccffffff')
              .textAlign(TextAlign.Center)
              .shadow({
                radius: 8,
                color: '#122f1b0e',
                offsetX: 1,
                offsetY: 1
              })
              .linearGradient({
                colors: [
                  ['#ccb36d3e', 0],
                  ['#cccc9466', 1],
                ]
              })

            Text('夜游')
              .fontSize(16)
              .width(78)
              .height(36)
              .borderRadius(8)
              .backgroundColor('#ccffffff')
              .textAlign(TextAlign.Center)
              .shadow({
                radius: 8,
                color: '#122f1b0e',
                offsetX: 1,
                offsetY: 1
              })

            Text('美食')
              .fontSize(16)
              .width(78)
              .height(36)
              .borderRadius(8)
              .backgroundColor('#ccffffff')
              .textAlign(TextAlign.Center)
              .shadow({
                radius: 8,
                color: '#122f1b0e',
                offsetX: 1,
                offsetY: 1
              })
          }
          .margin({
            top: 24
          })
          .justifyContent(FlexAlign.SpaceBetween)
          .width('100%')

          // =========== 4. 热门导航 ==========
          Row() {
            Column() {
              Row() {
                Image($r('app.media.ic_hot'))
                  .fillColor('#DE9768')
                  .height(17)
                Text('近期热门')
                  .fontSize(14)
                  .fontColor('#ff673915')
              }

              Image($r('app.media.select'))
                .height(5)
                .width(71)
            }

            Text('必打卡')
              .fontSize(14)
              .fontColor('#ff666666')

            Text('滑雪')
              .fontSize(14)
              .fontColor('#ff666666')

            Text('亲子')
              .fontSize(14)
              .fontColor('#ff666666')

            Text('自然风光')
              .fontSize(14)
              .fontColor('#ff666666')
          }
          .width('100%')
          .margin({
            top: 12
          })
          .alignItems(VerticalAlign.Center)
          .justifyContent(FlexAlign.SpaceBetween)

          Text('北京近期热门景点榜')
            .fontSize(24)
            .fontColor('#ff3d1a07')
            .fontWeight(600)
            .margin({
              top: 12
            })

          Column({ space: 12 }) {
            Row() {
              Image($r('app.media.universal'))
                .height(175)
                .width(88)
                .borderRadius(5)

              Stack() {
                Image($r('app.media.no_icon'))
                  .width(50)
                Text('No.1')
                  .fontColor($r('sys.color.ohos_dialog_text_alert'))
                  .fontSize(11)
                  .fontWeight(FontWeight.Bold)
                  .alignSelf(ItemAlign.Center)
                  .offset({
                    y: -2
                  })
              }
              .position({
                top: 0,
                left: -4
              })

              Column() {
                Row() {
                  Text('北京环球度假区')
                    .fontSize(16)
                    .fontWeight(600)
                    .fontColor('#ff333333')
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .fillColor('#ff444444')
                }
                .width('210')
                .justifyContent(FlexAlign.SpaceBetween)

                Row({ space: 4 }) {
                  Row() {
                    Image($r('app.media.ic_huo'))
                      .fillColor(Color.White)
                      .height(11)
                    Text('10')
                      .fontSize(14)
                      .fontColor(Color.White)
                    // .offset({
                    //   y: -2
                    // })
                  }
                  .justifyContent(FlexAlign.Center)
                  .padding({
                    left: 4,
                    right: 4,
                    bottom: 3.5,
                    top: 3.5
                  })
                  // .height(18)
                  // .width(32)
                  .borderRadius(4)
                  .linearGradient({
                    colors: [
                      ['#ffff856e', 0],
                      ['#ffff902a', 1],
                    ]
                  })

                  Divider()
                    .height(8)
                    .width(1)
                    .backgroundColor('#fff5f5f5')

                  Text('4.5分 1.8w条点评')
                    .fontSize(14)
                    .fontColor('#ff666666')

                  Text('￥308起')
                    .fontSize(14)
                    .fontColor('#ff666666')
                }
                .margin({
                  top: 6
                })

                Text() {
                  ImageSpan($r('app.media.dianzan'))
                    .height(16)
                  Span('上榜理由')
                    .fontWeight(FontWeight.Bold)
                  Span('在这个冬天来环球影城，一起沉浸在冬日独有的浪漫，漫步在飞舞的雪天，创造专属于你的浪漫')
                }
                .lineHeight(18)
                .backgroundColor('#FFF7F1')
                .padding({
                  top: 8,
                  bottom: 10,
                  left: 8,
                  right: 9
                })
                .width('216')
                .textIndent(2)
                .textOverflow({
                  overflow: TextOverflow.Ellipsis
                })
                .maxLines(3)
                .fontSize(13)
                .fontColor('#ff5f2b0e')

                Row({ space: 4 }) {
                  Text('嗨玩乐园')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('游乐园')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })
                }

                Row({ space: 5 }) {
                  Image($r('app.media.ic_daohangdizhi'))
                    .height(14)

                  Text('北京·果园环岛/通州区')
                    .fontColor('#ff999999')
                    .fontSize(12)

                  Text('距您36.7km')
                    .fontColor('#ff999999')
                    .fontSize(12)
                }
                .margin({
                  top: 6
                })
              }
              .margin({
                left: 8
              })
              .alignItems(HorizontalAlign.Start)
            }
            .padding(12)
            .width('100%')
            .shadow({
              offsetX: 0,
              offsetY: 2,
              radius: 8,
              color: '#1a000000'
            })

            Row() {
              Image($r('app.media.imperial'))
                .height(175)
                .width(88)
                .borderRadius(5)

              Stack() {
                Image($r('app.media.no_icon'))
                  .width(50)
                Text('No.2')
                  .fontColor($r('sys.color.ohos_dialog_text_alert'))
                  .fontSize(11)
                  .fontWeight(FontWeight.Bold)
                  .alignSelf(ItemAlign.Center)
                  .offset({
                    y: -2
                  })
              }
              .position({
                top: 0,
                left: -4
              })

              Column() {
                Row() {
                  Text('故宫博物馆')
                    .fontSize(16)
                    .fontWeight(600)
                    .fontColor('#ff333333')
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .fillColor('#ff444444')
                }
                .width('210')
                .justifyContent(FlexAlign.SpaceBetween)

                Row({ space: 4 }) {
                  Row() {
                    Image($r('app.media.ic_huo'))
                      .fillColor(Color.White)
                      .height(11)
                    Text('10')
                      .fontSize(14)
                      .fontColor(Color.White)
                    // .offset({
                    //   y: -2
                    // })
                  }
                  .justifyContent(FlexAlign.Center)
                  .padding({
                    left: 4,
                    right: 4,
                    bottom: 3.5,
                    top: 3.5
                  })
                  // .height(18)
                  // .width(32)
                  .borderRadius(4)
                  .linearGradient({
                    colors: [
                      ['#ffff856e', 0],
                      ['#ffff902a', 1],
                    ]
                  })

                  Divider()
                    .height(8)
                    .width(1)
                    .backgroundColor('#fff5f5f5')

                  Text('4.8分 14.6w条点评')
                    .fontSize(14)
                    .fontColor('#ff666666')

                  Text('￥308起')
                    .fontSize(14)
                    .fontColor('#ff666666')
                }
                .margin({
                  top: 6
                })

                Text() {
                  ImageSpan($r('app.media.dianzan'))
                    .height(16)
                  Span('上榜理由')
                    .fontWeight(FontWeight.Bold)
                  Span('城墙建筑，院落布局，屋脊小兽，都包含着古代人民的巧夺天工，带小朋友 穿梭明清时代')
                }
                .lineHeight(18)
                .backgroundColor('#FFF7F1')
                .padding({
                  top: 8,
                  bottom: 10,
                  left: 8,
                  right: 9
                })
                .width('216')
                .textIndent(2)
                .textOverflow({
                  overflow: TextOverflow.Ellipsis
                })
                .maxLines(3)
                .fontSize(13)
                .fontColor('#ff5f2b0e')

                Row({ space: 4 }) {
                  Text('探秘展馆')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('文化古迹')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('博物馆')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('场馆展馆')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })
                }

                Row({ space: 5 }) {
                  Image($r('app.media.ic_daohangdizhi'))
                    .height(14)

                  Text('北京·天安门/王府井')
                    .fontColor('#ff999999')
                    .fontSize(12)

                  Text('距您16.5km')
                    .fontColor('#ff999999')
                    .fontSize(12)
                }
                .margin({
                  top: 6
                })
              }
              .margin({
                left: 8
              })
              .alignItems(HorizontalAlign.Start)
            }
            .padding(12)
            .width('100%')
            .shadow({
              offsetX: 0,
              offsetY: 2,
              radius: 8,
              color: '#1a000000'
            })


            Row() {
              Image($r('app.media.universal'))
                .height(175)
                .width(88)
                .borderRadius(5)

              Stack() {
                Image($r('app.media.no_icon'))
                  .width(50)
                Text('No.1')
                  .fontColor($r('sys.color.ohos_dialog_text_alert'))
                  .fontSize(11)
                  .fontWeight(FontWeight.Bold)
                  .alignSelf(ItemAlign.Center)
                  .offset({
                    y: -2
                  })
              }
              .position({
                top: 0,
                left: -4
              })

              Column() {
                Row() {
                  Text('北京环球度假区')
                    .fontSize(16)
                    .fontWeight(600)
                    .fontColor('#ff333333')
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .fillColor('#ff444444')
                }
                .width('210')
                .justifyContent(FlexAlign.SpaceBetween)

                Row({ space: 4 }) {
                  Row() {
                    Image($r('app.media.ic_huo'))
                      .fillColor(Color.White)
                      .height(11)
                    Text('10')
                      .fontSize(14)
                      .fontColor(Color.White)
                    // .offset({
                    //   y: -2
                    // })
                  }
                  .justifyContent(FlexAlign.Center)
                  .padding({
                    left: 4,
                    right: 4,
                    bottom: 3.5,
                    top: 3.5
                  })
                  // .height(18)
                  // .width(32)
                  .borderRadius(4)
                  .linearGradient({
                    colors: [
                      ['#ffff856e', 0],
                      ['#ffff902a', 1],
                    ]
                  })

                  Divider()
                    .height(8)
                    .width(1)
                    .backgroundColor('#fff5f5f5')

                  Text('4.5分 1.8w条点评')
                    .fontSize(14)
                    .fontColor('#ff666666')

                  Text('￥308起')
                    .fontSize(14)
                    .fontColor('#ff666666')
                }
                .margin({
                  top: 6
                })

                Text() {
                  ImageSpan($r('app.media.dianzan'))
                    .height(16)
                  Span('上榜理由')
                    .fontWeight(FontWeight.Bold)
                  Span('在这个冬天来环球影城，一起沉浸在冬日独有的浪漫，漫步在飞舞的雪天，创造专属于你的浪漫')
                }
                .lineHeight(18)
                .backgroundColor('#FFF7F1')
                .padding({
                  top: 8,
                  bottom: 10,
                  left: 8,
                  right: 9
                })
                .width('216')
                .textIndent(2)
                .textOverflow({
                  overflow: TextOverflow.Ellipsis
                })
                .maxLines(3)
                .fontSize(13)
                .fontColor('#ff5f2b0e')

                Row({ space: 4 }) {
                  Text('嗨玩乐园')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('游乐园')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })
                }

                Row({ space: 5 }) {
                  Image($r('app.media.ic_daohangdizhi'))
                    .height(14)

                  Text('北京·果园环岛/通州区')
                    .fontColor('#ff999999')
                    .fontSize(12)

                  Text('距您36.7km')
                    .fontColor('#ff999999')
                    .fontSize(12)
                }
                .margin({
                  top: 6
                })
              }
              .margin({
                left: 8
              })
              .alignItems(HorizontalAlign.Start)
            }
            .padding(12)
            .width('100%')
            .shadow({
              offsetX: 0,
              offsetY: 2,
              radius: 8,
              color: '#1a000000'
            })

            Row() {
              Image($r('app.media.imperial'))
                .height(175)
                .width(88)
                .borderRadius(5)

              Stack() {
                Image($r('app.media.no_icon'))
                  .width(50)
                Text('No.2')
                  .fontColor($r('sys.color.ohos_dialog_text_alert'))
                  .fontSize(11)
                  .fontWeight(FontWeight.Bold)
                  .alignSelf(ItemAlign.Center)
                  .offset({
                    y: -2
                  })
              }
              .position({
                top: 0,
                left: -4
              })

              Column() {
                Row() {
                  Text('故宫博物馆')
                    .fontSize(16)
                    .fontWeight(600)
                    .fontColor('#ff333333')
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .fillColor('#ff444444')
                }
                .width('210')
                .justifyContent(FlexAlign.SpaceBetween)

                Row({ space: 4 }) {
                  Row() {
                    Image($r('app.media.ic_huo'))
                      .fillColor(Color.White)
                      .height(11)
                    Text('10')
                      .fontSize(14)
                      .fontColor(Color.White)
                    // .offset({
                    //   y: -2
                    // })
                  }
                  .justifyContent(FlexAlign.Center)
                  .padding({
                    left: 4,
                    right: 4,
                    bottom: 3.5,
                    top: 3.5
                  })
                  // .height(18)
                  // .width(32)
                  .borderRadius(4)
                  .linearGradient({
                    colors: [
                      ['#ffff856e', 0],
                      ['#ffff902a', 1],
                    ]
                  })

                  Divider()
                    .height(8)
                    .width(1)
                    .backgroundColor('#fff5f5f5')

                  Text('4.8分 14.6w条点评')
                    .fontSize(14)
                    .fontColor('#ff666666')

                  Text('￥308起')
                    .fontSize(14)
                    .fontColor('#ff666666')
                }
                .margin({
                  top: 6
                })

                Text() {
                  ImageSpan($r('app.media.dianzan'))
                    .height(16)
                  Span('上榜理由')
                    .fontWeight(FontWeight.Bold)
                  Span('城墙建筑，院落布局，屋脊小兽，都包含着古代人民的巧夺天工，带小朋友 穿梭明清时代')
                }
                .lineHeight(18)
                .backgroundColor('#FFF7F1')
                .padding({
                  top: 8,
                  bottom: 10,
                  left: 8,
                  right: 9
                })
                .width('216')
                .textIndent(2)
                .textOverflow({
                  overflow: TextOverflow.Ellipsis
                })
                .maxLines(3)
                .fontSize(13)
                .fontColor('#ff5f2b0e')

                Row({ space: 4 }) {
                  Text('探秘展馆')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('文化古迹')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('博物馆')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('场馆展馆')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })
                }

                Row({ space: 5 }) {
                  Image($r('app.media.ic_daohangdizhi'))
                    .height(14)

                  Text('北京·天安门/王府井')
                    .fontColor('#ff999999')
                    .fontSize(12)

                  Text('距您16.5km')
                    .fontColor('#ff999999')
                    .fontSize(12)
                }
                .margin({
                  top: 6
                })
              }
              .margin({
                left: 8
              })
              .alignItems(HorizontalAlign.Start)
            }
            .padding(12)
            .width('100%')
            .shadow({
              offsetX: 0,
              offsetY: 2,
              radius: 8,
              color: '#1a000000'
            })

            Row() {
              Image($r('app.media.universal'))
                .height(175)
                .width(88)
                .borderRadius(5)

              Stack() {
                Image($r('app.media.no_icon'))
                  .width(50)
                Text('No.1')
                  .fontColor($r('sys.color.ohos_dialog_text_alert'))
                  .fontSize(11)
                  .fontWeight(FontWeight.Bold)
                  .alignSelf(ItemAlign.Center)
                  .offset({
                    y: -2
                  })
              }
              .position({
                top: 0,
                left: -4
              })

              Column() {
                Row() {
                  Text('北京环球度假区')
                    .fontSize(16)
                    .fontWeight(600)
                    .fontColor('#ff333333')
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .fillColor('#ff444444')
                }
                .width('210')
                .justifyContent(FlexAlign.SpaceBetween)

                Row({ space: 4 }) {
                  Row() {
                    Image($r('app.media.ic_huo'))
                      .fillColor(Color.White)
                      .height(11)
                    Text('10')
                      .fontSize(14)
                      .fontColor(Color.White)
                    // .offset({
                    //   y: -2
                    // })
                  }
                  .justifyContent(FlexAlign.Center)
                  .padding({
                    left: 4,
                    right: 4,
                    bottom: 3.5,
                    top: 3.5
                  })
                  // .height(18)
                  // .width(32)
                  .borderRadius(4)
                  .linearGradient({
                    colors: [
                      ['#ffff856e', 0],
                      ['#ffff902a', 1],
                    ]
                  })

                  Divider()
                    .height(8)
                    .width(1)
                    .backgroundColor('#fff5f5f5')

                  Text('4.5分 1.8w条点评')
                    .fontSize(14)
                    .fontColor('#ff666666')

                  Text('￥308起')
                    .fontSize(14)
                    .fontColor('#ff666666')
                }
                .margin({
                  top: 6
                })

                Text() {
                  ImageSpan($r('app.media.dianzan'))
                    .height(16)
                  Span('上榜理由')
                    .fontWeight(FontWeight.Bold)
                  Span('在这个冬天来环球影城，一起沉浸在冬日独有的浪漫，漫步在飞舞的雪天，创造专属于你的浪漫')
                }
                .lineHeight(18)
                .backgroundColor('#FFF7F1')
                .padding({
                  top: 8,
                  bottom: 10,
                  left: 8,
                  right: 9
                })
                .width('216')
                .textIndent(2)
                .textOverflow({
                  overflow: TextOverflow.Ellipsis
                })
                .maxLines(3)
                .fontSize(13)
                .fontColor('#ff5f2b0e')

                Row({ space: 4 }) {
                  Text('嗨玩乐园')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('游乐园')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })
                }

                Row({ space: 5 }) {
                  Image($r('app.media.ic_daohangdizhi'))
                    .height(14)

                  Text('北京·果园环岛/通州区')
                    .fontColor('#ff999999')
                    .fontSize(12)

                  Text('距您36.7km')
                    .fontColor('#ff999999')
                    .fontSize(12)
                }
                .margin({
                  top: 6
                })
              }
              .margin({
                left: 8
              })
              .alignItems(HorizontalAlign.Start)
            }
            .padding(12)
            .width('100%')
            .shadow({
              offsetX: 0,
              offsetY: 2,
              radius: 8,
              color: '#1a000000'
            })


            Row() {
              Image($r('app.media.imperial'))
                .height(175)
                .width(88)
                .borderRadius(5)

              Stack() {
                Image($r('app.media.no_icon'))
                  .width(50)
                Text('No.2')
                  .fontColor($r('sys.color.ohos_dialog_text_alert'))
                  .fontSize(11)
                  .fontWeight(FontWeight.Bold)
                  .alignSelf(ItemAlign.Center)
                  .offset({
                    y: -2
                  })
              }
              .position({
                top: 0,
                left: -4
              })

              Column() {
                Row() {
                  Text('故宫博物馆')
                    .fontSize(16)
                    .fontWeight(600)
                    .fontColor('#ff333333')
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .fillColor('#ff444444')
                }
                .width('210')
                .justifyContent(FlexAlign.SpaceBetween)

                Row({ space: 4 }) {
                  Row() {
                    Image($r('app.media.ic_huo'))
                      .fillColor(Color.White)
                      .height(11)
                    Text('10')
                      .fontSize(14)
                      .fontColor(Color.White)
                    // .offset({
                    //   y: -2
                    // })
                  }
                  .justifyContent(FlexAlign.Center)
                  .padding({
                    left: 4,
                    right: 4,
                    bottom: 3.5,
                    top: 3.5
                  })
                  // .height(18)
                  // .width(32)
                  .borderRadius(4)
                  .linearGradient({
                    colors: [
                      ['#ffff856e', 0],
                      ['#ffff902a', 1],
                    ]
                  })

                  Divider()
                    .height(8)
                    .width(1)
                    .backgroundColor('#fff5f5f5')

                  Text('4.8分 14.6w条点评')
                    .fontSize(14)
                    .fontColor('#ff666666')

                  Text('￥308起')
                    .fontSize(14)
                    .fontColor('#ff666666')
                }
                .margin({
                  top: 6
                })

                Text() {
                  ImageSpan($r('app.media.dianzan'))
                    .height(16)
                  Span('上榜理由')
                    .fontWeight(FontWeight.Bold)
                  Span('城墙建筑，院落布局，屋脊小兽，都包含着古代人民的巧夺天工，带小朋友 穿梭明清时代')
                }
                .lineHeight(18)
                .backgroundColor('#FFF7F1')
                .padding({
                  top: 8,
                  bottom: 10,
                  left: 8,
                  right: 9
                })
                .width('216')
                .textIndent(2)
                .textOverflow({
                  overflow: TextOverflow.Ellipsis
                })
                .maxLines(3)
                .fontSize(13)
                .fontColor('#ff5f2b0e')

                Row({ space: 4 }) {
                  Text('探秘展馆')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('文化古迹')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('博物馆')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('场馆展馆')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })
                }

                Row({ space: 5 }) {
                  Image($r('app.media.ic_daohangdizhi'))
                    .height(14)

                  Text('北京·天安门/王府井')
                    .fontColor('#ff999999')
                    .fontSize(12)

                  Text('距您16.5km')
                    .fontColor('#ff999999')
                    .fontSize(12)
                }
                .margin({
                  top: 6
                })
              }
              .margin({
                left: 8
              })
              .alignItems(HorizontalAlign.Start)
            }
            .padding(12)
            .width('100%')
            .shadow({
              offsetX: 0,
              offsetY: 2,
              radius: 8,
              color: '#1a000000'
            })

            Row() {
              Image($r('app.media.universal'))
                .height(175)
                .width(88)
                .borderRadius(5)

              Stack() {
                Image($r('app.media.no_icon'))
                  .width(50)
                Text('No.1')
                  .fontColor($r('sys.color.ohos_dialog_text_alert'))
                  .fontSize(11)
                  .fontWeight(FontWeight.Bold)
                  .alignSelf(ItemAlign.Center)
                  .offset({
                    y: -2
                  })
              }
              .position({
                top: 0,
                left: -4
              })

              Column() {
                Row() {
                  Text('北京环球度假区')
                    .fontSize(16)
                    .fontWeight(600)
                    .fontColor('#ff333333')
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .fillColor('#ff444444')
                }
                .width('210')
                .justifyContent(FlexAlign.SpaceBetween)

                Row({ space: 4 }) {
                  Row() {
                    Image($r('app.media.ic_huo'))
                      .fillColor(Color.White)
                      .height(11)
                    Text('10')
                      .fontSize(14)
                      .fontColor(Color.White)
                    // .offset({
                    //   y: -2
                    // })
                  }
                  .justifyContent(FlexAlign.Center)
                  .padding({
                    left: 4,
                    right: 4,
                    bottom: 3.5,
                    top: 3.5
                  })
                  // .height(18)
                  // .width(32)
                  .borderRadius(4)
                  .linearGradient({
                    colors: [
                      ['#ffff856e', 0],
                      ['#ffff902a', 1],
                    ]
                  })

                  Divider()
                    .height(8)
                    .width(1)
                    .backgroundColor('#fff5f5f5')

                  Text('4.5分 1.8w条点评')
                    .fontSize(14)
                    .fontColor('#ff666666')

                  Text('￥308起')
                    .fontSize(14)
                    .fontColor('#ff666666')
                }
                .margin({
                  top: 6
                })

                Text() {
                  ImageSpan($r('app.media.dianzan'))
                    .height(16)
                  Span('上榜理由')
                    .fontWeight(FontWeight.Bold)
                  Span('在这个冬天来环球影城，一起沉浸在冬日独有的浪漫，漫步在飞舞的雪天，创造专属于你的浪漫')
                }
                .lineHeight(18)
                .backgroundColor('#FFF7F1')
                .padding({
                  top: 8,
                  bottom: 10,
                  left: 8,
                  right: 9
                })
                .width('216')
                .textIndent(2)
                .textOverflow({
                  overflow: TextOverflow.Ellipsis
                })
                .maxLines(3)
                .fontSize(13)
                .fontColor('#ff5f2b0e')

                Row({ space: 4 }) {
                  Text('嗨玩乐园')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })

                  Text('游乐园')
                    .fontSize(10)
                    .fontColor('#ff99aeca')
                    .border({
                      width: 1,
                      color: '#ff99aeca',
                      radius: 4,
                    })
                    .height(17)
                    .padding({
                      left: 4,
                      right: 4
                    })
                }

                Row({ space: 5 }) {
                  Image($r('app.media.ic_daohangdizhi'))
                    .height(14)

                  Text('北京·果园环岛/通州区')
                    .fontColor('#ff999999')
                    .fontSize(12)

                  Text('距您36.7km')
                    .fontColor('#ff999999')
                    .fontSize(12)
                }
                .margin({
                  top: 6
                })
              }
              .margin({
                left: 8
              })
              .alignItems(HorizontalAlign.Start)
            }
            .padding(12)
            .width('100%')
            .shadow({
              offsetX: 0,
              offsetY: 2,
              radius: 8,
              color: '#1a000000'
            })
          }
          .width('100%')

        }.padding({
          left: 12,
          right: 12
        })
        .width('100%')
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}