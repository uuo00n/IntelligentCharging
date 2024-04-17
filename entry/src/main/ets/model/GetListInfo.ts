import http from '@ohos.net.http'
import UserInfo from './UserInfo'

class ListInfo {
  getListData(): Promise<any[]> {
    return new Promise((resolve, reject) => {
      let conn = http.createHttp();
      conn.request(
        'http://124.93.196.45:10001/dev-api/bs-smart-charger/orders/list',
        { method: http.RequestMethod.GET,
          header: {
            "Content-Type": "application/json",
            "Authorization": UserInfo.token
          },
          expectDataType: http.HttpDataType.STRING
        })
        .then((resp: http.HttpResponse) => {
          if (resp.responseCode === 200) {
            let list: any[] = JSON.parse(resp.result.toString()).data
            if (list.length != 0) {
              console.log("成功获取有效数据"+list.length)
            }else {
              console.log("获取数据数为0")
            }
            resolve(list)
          } else {
            reject("resp获取数据失败")
          }
        })
    })
  }
}

export default new ListInfo()