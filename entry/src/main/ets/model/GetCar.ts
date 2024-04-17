import http from '@ohos.net.http'
import UserInfo from './UserInfo'
import CarInfo from './CarInfo'

class getCarInfo {
  getCarInfo(): Promise<any[]> {
    return new Promise((resolve, reject) => {
      let conn = http.createHttp();
      conn.request('http://124.93.196.45:10001/dev-api/getInfo',
        { method: http.RequestMethod.GET,
          header: {
            "Content-Type": "application/json",
            "Authorization": UserInfo.token
          },
          expectDataType: http.HttpDataType.STRING
        }).then((resp: http.HttpResponse) => {
        if ((resp.responseCode === 200)) {
          CarInfo.car = JSON.parse(resp.result.toString()).cars[0]
          console.log("getcar"+CarInfo.car.carId)
        }
      })
    })
  }
}

export default new getCarInfo()