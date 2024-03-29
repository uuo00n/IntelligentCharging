import Home from './Home'
import Order from './Order'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Column() {
        Row() {
          Tabs({ barPosition: BarPosition.End }) {
            TabContent() {
              Home()
            }
            .opacity(1)
            .tabBar({ icon: "/icon/Home.png", text: "主页" })
            .onAreaChange(() => {
              console.log("主页")
            })

            TabContent() {
              Order()
            }
            .tabBar({ icon: "/icon/List.png", text: "订单" })
            .onAreaChange(() => {
              console.log("订单")
            })

            TabContent() {
              Home()
            }
            .tabBar({ icon: "/icon/Me.png", text: "我的" })
            .onAreaChange(() => {
              console.log("我的")
            })
          }
          .width("100%")
          .height("100%")
        }
        .width("100%")
        .height("100%")
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Start)
    }
    .width("100%")
    .height("100%")
  }
}