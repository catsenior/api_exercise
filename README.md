### Tools
- RestClient : 發送 HTTP 請求 (https://github.com/rest-client/rest-client)
- Jbuilder : 定義JSON格式 (https://github.com/rails/jbuilder)
- Devise : 使用者認證 (https://github.com/heartcombo/devise)
- CarrierWave : 資料上傳 (https://github.com/carrierwaveuploader/carrierwave)
- will_paginate : 分頁功能 (https://github.com/mislav/will_paginate)

### 實作串接第三方 API 服務
透過中央氣象局開放資料平臺，取得臺灣各縣市天氣預報
- 中央氣象局開放資料平臺( https://opendata.cwb.gov.tw/dist/opendata-swagger.html )

### 實作訂票系統 API 
- 使用者可以查詢有哪些列車
- 使用者可以查詢特定列車有哪些空位
- 使用者可以訂票，並得到訂票號碼
- 使用者可根據訂票號碼
  - 查詢訂票資料
  - 修改訂票資料
  - 取消訂票
- 使用者可以註冊、登入並取得 API Key
  - 在登入狀態，可以查詢該用戶的所有訂票
  - 使用者登出後，原本的 token 將失效
  - 使用者可以修改註冊資料
