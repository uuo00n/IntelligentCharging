import router from '@ohos.router'
import ListInfo from '../model/GetListInfo'

@Component
export default struct ListView {
  @State listData: any[] = []
  @State type : number = 1

  aboutToAppear() {
    console.log("XXXXXXXXXXXXXXXXXXXXXX")
    ListInfo.getListData(this.type).then((val) => {
      this.listData = val
    })
  }

  build() {
    Column() {
      Column() {
        Row() {
          List() {
            ForEach(this.listData, (item) => {
              ListItem() {
                Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap, justifyContent: FlexAlign.End }) {
                  Text("订单编号：" + item.chargingOrdersNo)
                    .width("50%")
                    .height("30vp")
                    .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .lineHeight("0fp")
                    .fontSize("10fp")
                  Text("开始时间：" + item.beginTime)
                    .width("50%")
                    .height("30vp")
                    .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .lineHeight("0fp")
                    .fontSize("10fp")
                  Text("充电站名称：" + item.chargingStationName)
                    .width("50%")
                    .height("30vp")
                    .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .padding({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .lineHeight("0fp")
                    .fontSize("10fp")
                  Text("充电桩名称：" + item.chargingPileName)
                    .width("50%")
                    .height("30vp")
                    .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .padding({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .lineHeight("0fp")
                    .fontSize("10fp")
                    .maxLines(1)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                  Text("充电桩编号："+item.chargingPileNo)
                    .width("50%")
                    .height("30vp")
                    .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .padding({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .lineHeight("0fp")
                    .fontSize("10fp")
                  Text("已充电量："+item.chargedQuantity)
                    .width("50%")
                    .height("30vp")
                    .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .padding({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .lineHeight("0fp")
                    .fontSize("10fp")
                  Text("充电时长："+item.chargingDuration)
                    .width("50%")
                    .height("30vp")
                    .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .padding({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .lineHeight("0fp")
                    .fontSize("10fp")
                  Text("预计剩余时长："+item.estimatedRemainingDuration)
                    .width("50%")
                    .height("30vp")
                    .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .padding({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    .lineHeight("0fp")
                    .fontSize("10fp")
                  Button("结束充电")
                    .width("80vp")
                    .height("30vp")
                    .margin({ top: "5vp", bottom: "5vp", left: "5vp", right: "5vp" })
                    .fontSize("10fp")
                    .onClick(() => {
                      AlertDialog.show({
                        title: "结束充电",
                        message: "确认结束充电？",
                        primaryButton: {
                          value: '继续充电',
                          action: () => {
                            console.info('继续充电')
                          }
                        },
                        secondaryButton: {
                          value: '结束充电',
                          fontColor: '#ff0000',
                          action: () => {
                            console.info('结束充电')
                          }
                        },
                        cancel: () => {
                          console.info('Closed callbacks')
                        }
                      })
                    })
                }
                .width("100%")
                .height("100%")
                .padding({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
              }
              .width("100%")
              .height("180vp")
              .borderRadius("10vp")
              .backgroundColor("#b8babc")
              .padding({ top: "10vp", bottom: "10vp", left: "10vp", right: "10vp" })
              // .onClick(() => {
              //   console.log("" + item.id)
              //   router.pushUrl({
              //     url: 'pages/OrderAbout',
              //     params: {
              //       item
              //     },
              //   },
              //     router.RouterMode.Standard,
              //     err=>{
              //       if (err) {
              //         console.log("路由错误"+err+"code"+err.code+"msg"+err.message)
              //       }
              //     }
              //   )
              // })
            })
          }
          .width("100%")
          .height("100%")
          .padding({ top: "10vp", bottom: "10vp", left: "10vp", right: "10vp" })
          .divider({ strokeWidth: "10vp" })
          .edgeEffect(EdgeEffect.Spring)
        }
        .width("100%")
        .height("100%")
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
  }
}