lunch = [
 "*[中華料理] CHINESEKITCHEN 虎8 （チャイニーズキッチントラハチ）*\r\nhttp://goo.gl/VPEljG\r\nランチ：11:00～17:00\r\n価格帯：780円～1000円以下\r\n徒歩5分",
"*[中華料理] 上海食堂*\r\nhttp://goo.gl/hx9E8J\r\nランチ：10:00～15:00\r\n価格帯：500円〜1000円以下\r\n徒歩6分",
"*[中華・刀削麺] 張家 恵比寿店（チョウヤ）*\r\nhttp://goo.gl/cQTDMS\r\nランチ：11:30～14:30（L.O.14:20）\r\n価格帯：700円〜1000円以下\r\n徒歩7分",
"*[中華・台湾料理] 欣来*\r\nhttp://goo.gl/wdTVE0\r\nランチ：11:45～14:30\r\n価格帯：750円〜1000円以下\r\n徒歩8分",
"*[欧風料理] ゴウ スタンド （GOU STAND）*\r\nhttp://goo.gl/rHKZLg\r\nランチ：11：30～14：00（L.O.13：30）\r\n価格帯：800円～1000円以下\r\n徒歩3分",
"*[ハンバーガー] BLACOWS（ブラッカウズ）*\r\nhttp://goo.gl/69x0G\r\nランチ：11:30～22:00（L.O.21:00）\r\n価格帯：1200円〜1500円以下\r\n徒歩4分",
"*[ピザ・パスタ] DROP 恵比寿*\r\nhttp://goo.gl/Gtl8Xh\r\nランチ：11:00～15:00\r\n価格帯：500円〜1000円以下\r\n徒歩6分"
]

module.exports = (robot) ->
  robot.respond /lunch/i, (msg) ->
    shuzo = msg.random lunch
    msg.send "#{shuzo}"