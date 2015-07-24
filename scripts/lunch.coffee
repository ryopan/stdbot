lunch = [
 "*[中華料理] CHINESEKITCHEN 虎8 （チャイニーズキッチントラハチ）*\r\nhttp://goo.gl/VPEljG\r\n
 ```ランチ：11:00～17:00
価格帯：780円～1000円以下
徒歩5分```",
"*[うどん] うどん山長 *\r\nhttp://goo.gl/BVjKZ\r\nランチ：11:00～\r\n価格帯：700円〜1200円以下\r\n徒歩4分"
]

module.exports = (robot) ->
  robot.respond /(lunch|昼飯|お昼|昼ごはん|ランチ)/i, (msg) ->
    shuzo = msg.random lunch
    msg.send "今日は〜〜〜〜〜〜〜〜……\r\n\r\n\r\nここっ！\r\n\r\n#{shuzo}"