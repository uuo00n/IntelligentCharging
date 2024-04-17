import router from '@ohos.router';
import DoLogin from '../model/GetUser'

@Entry
@Component
struct Login {
  @State message: string = 'Hello World'
  acc: string;
  pwd: string;

  build() {
    Column() {
      Column() {
        Text("登录")
          .width("100%")
          .height("60vp")
          .margin({ top: "50vp", bottom: "50vp", left: "50vp", right: "50vp" })
          .textAlign(TextAlign.Center)
          .fontSize("50fp")
          .fontStyle(FontStyle.Normal)
          .fontWeight(FontWeight.Bold)
        Row() {
          Text("账号")
            .width("20%")
            .height("60vp")
            .fontSize("25fp")
          TextInput({ placeholder: "请输入账户", text: '14761940053' })
            .type(InputType.Normal)
            .width("250vp")
            .height("50vp")
            .onChange((val) => {
              this.acc = val
            })
        }
        .width("100%")
        .height("91.24vp")
        .justifyContent(FlexAlign.Center)

        Row() {
          Text("密码")
            .width("20%")
            .height("60vp")
            .fontSize("25fp")
          TextInput({ placeholder: "请输入密码", text: '123456' })
            .type(InputType.Password)
            .width("250vp")
            .height("50vp")
            .onChange((val) => {
              this.pwd = val
            })
        }
        .width("100%")
        .height("91.24vp")
        .justifyContent(FlexAlign.Center)

        Button("登录")
          .width("40%")
          .height("50vp")
          .margin({ top: "50vp", bottom: "50vp", left: "50vp", right: "50vp" })
          .onClick(() => {
            DoLogin.doLogin(this.acc, this.pwd).then((val) => {
              if (val === "ok") {
                router.pushUrl({
                  url: 'pages/Index'
                })
              }
            })
          })
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Start)
    }
    .width("100%")
    .height("100%")
  }
}