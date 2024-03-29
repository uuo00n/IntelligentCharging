import router from '@ohos.router'

@Entry
@Component
struct OrderAbout {
  @State message: string = 'Hello World'
  @State params: any = router.getParams()

  aboutToAppear() {
    console.log("laizi yemian1" + JSON.stringify(this.params.item.id));
  }

  build() {
    Column() {
      Column() {
        Row() {
          Image("/icon/back_white.png")
            .width("50vp")
            .height("100%")
            .onClick(() => {
              router.back()
            })
          Text("订单详细")
            .width("200vp")
            .height("100%")
            .fontColor("#ffffff")
            .margin({ left: "10vp" })
            .fontSize("20fp")
            .fontWeight(FontWeight.Bold)
        }
        .width("100%")
        .height("50vp")
        .backgroundColor("#007aff")

        Row() {
          Text("待支付")
            .width("100%")
            .height("100%")
            .textAlign(TextAlign.Center)
            .fontSize("18fp")
        }
        .width("100%")
        .height("40vp")

        Column() {
          Text("订单编号：16666666")
            .width("100%")
            .height("60vp")
            .margin({ top: "10vp", bottom: "10vp", left: "10vp", right: "10vp" })
            .padding({ top: "10vp", bottom: "10vp", left: "10vp", right: "10vp" })
            .fontSize("14fp")
          List() {
            ListItem() {
              Flex({ wrap: FlexWrap.Wrap }) {
                Text("| 终端信息")
                  .width("100%")
                  .height("40vp")
                  .padding({ top: "10vp", bottom: "10vp", left: "10vp", right: "10vp" })
                  .fontSize("14fp")
                  .fontWeight(FontWeight.Bold)
                Flex({ wrap: FlexWrap.Wrap }) {
                  Text("充电站名称：")
                    .width("100%")
                    .height("30vp")
                  Text("充电桩编号：")
                    .width("100%")
                    .height("30vp")
                  Text("充电桩名称：")
                    .width("100%")
                    .height("30vp")
                }
                .width("100%")
                .height("140vp")
                .padding({ top: "15vp", bottom: "15vp", left: "15vp", right: "15vp" })
              }
              .width("100%")
              .height("100%")
            }
            .width("100%")
            .height("150vp")
            .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
            .sticky(Sticky.None)

            ListItem() {
              Flex({ wrap: FlexWrap.Wrap }) {
                Text("| 充电信息")
                  .width("100%")
                  .height("40vp")
                  .padding({ top: "10vp", bottom: "10vp", left: "10vp", right: "10vp" })
                  .fontSize("14fp")
                  .fontWeight(FontWeight.Bold)
                Flex({ wrap: FlexWrap.Wrap }) {
                  Text("开始充电时间：")
                    .width("100%")
                    .height("30vp")
                  Text("结束充电时间：")
                    .width("100%")
                    .height("30vp")
                  Text("已充电量：")
                    .width("100%")
                    .height("30vp")
                  Text("充电时长：")
                    .width("100%")
                    .height("30vp")
                  Text("车牌号：")
                    .width("100%")
                    .height("30vp")
                  Text("车辆型号：")
                    .width("100%")
                    .height("30vp")
                }
                .width("100%")
                .height("200vp")
                .padding({ top: "15vp", bottom: "15vp", left: "15vp", right: "15vp" })
              }
              .width("100%")
              .height("100%")
            }
            .width("100%")
            .height("250vp")
            .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
            .sticky(Sticky.None)

            ListItem() {
              Flex({ wrap: FlexWrap.Wrap }) {
                Text("| 费用信息")
                  .width("100%")
                  .height("40vp")
                  .padding({ top: "10vp", bottom: "10vp", left: "10vp", right: "10vp" })
                  .fontSize("14fp")
                  .fontWeight(FontWeight.Bold)
                Flex({ wrap: FlexWrap.Wrap }) {
                  Text("订单总额：")
                    .width("100%")
                    .height("30vp")
                  Text("电费：")
                    .width("100%")
                    .height("30vp")
                  Text("服务费：")
                    .width("100%")
                    .height("30vp")
                  Text("实付金额：")
                    .width("100%")
                    .height("30vp")
                }
                .width("100%")
                .height("150vp")
                .padding({ top: "15vp", bottom: "15vp", left: "15vp", right: "15vp" })
              }
              .width("100%")
              .height("100%")
            }
            .width("100%")
            .height("200vp")
            .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
            .sticky(Sticky.None)

            ListItem() {
              Flex({ wrap: FlexWrap.Wrap }) {
                Text("| 支付信息")
                  .width("100%")
                  .height("40vp")
                  .padding({ top: "10vp", bottom: "10vp", left: "10vp", right: "10vp" })
                  .fontSize("14fp")
                  .fontWeight(FontWeight.Bold)
                Flex({ wrap: FlexWrap.Wrap }) {
                  Text("支付金额：")
                    .width("100%")
                    .height("30vp")
                  Text("支付方式：")
                    .width("100%")
                    .height("30vp")
                  Text("支付时间：")
                    .width("100%")
                    .height("30vp")
                  Text("实付金额：")
                    .width("100%")
                    .height("30vp")
                }
                .width("100%")
                .height("150vp")
                .padding({ top: "15vp", bottom: "15vp", left: "15vp", right: "15vp" })
              }
              .width("100%")
              .height("100%")
            }
            .width("100%")
            .height("200vp")
            .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
            .sticky(Sticky.None)
          }
          .width("100%")
          .height("100%")
        }
        .width("100%")
        .height("85%")
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Start)
    }
    .width("100%")
    .height("100%")
  }
}