import Home from './Home'
import ListInfo from '../model/GetListInfo'
import ListView from './ListView'
@Preview
@Component
export default struct Order {
  aboutToAppear() {
   // ListInfo.getListData(1)
  }
  build() {
    Column() {
      Text("订单")
        .width("100%")
        .height("50vp")
        .backgroundColor("#007aff")
        .fontColor("#FFFFFF")
        .textAlign(TextAlign.Center)
        .fontSize("40fp")
        .fontWeight(700)
      Row() {
        Tabs() {
          TabContent(){
            ListView()
          }
            .tabBar({ text: "进行中" })
          TabContent(){

          }
            .tabBar({ text: "待支付" })
          TabContent(){

          }
            .tabBar({ text: "已完成" })
        }        
        .width("100%")
        .height("100%")
      }      
      .width("100%")
      .height("100%")
      .padding({ top: "5vp", bottom: "5vp", left: "5vp", right: "5vp" })
    }    
    .width("100%")
    .height("100%")
  }
}