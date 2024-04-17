import http from '@ohos.net.http'
import UserInfo from './UserInfo'

class DoLogin {
  doLogin(acc: string, pwd: string): Promise<string> {
    return new Promise((resolve, reject) => {
      let conn = http.createHttp()
      conn.request(
        'http://124.93.196.45:10001/dev-api/login',
        {
          method: http.RequestMethod.POST,
          header: {
            "Content-Type": "application/json"
          },
          expectDataType: http.HttpDataType.STRING,
          extraData: {
            "username": acc,
            "password": pwd
          }
        })
        .then((resp: http.HttpResponse) => {
          if (resp.responseCode === 200) {
            UserInfo.token = JSON.parse(resp.result.toString()).token
            console.log("获取token"+UserInfo.token)
            resolve("ok")
          } else {
            reject("返回代码不是200")
          }
        }).catch((error: http.HttpRequest) => {
        reject("网络错误")
      })
    })
  }
}

export default new DoLogin()