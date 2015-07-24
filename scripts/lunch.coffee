lunch = [
 "http://goo.gl/VPEljG",
"http://goo.gl/hx9E8J",
"'''http://goo.gl/cQTDMS
■ランチ　11:30～14:30（L.O.14:20）
■価格帯　700円〜1000円以下'''"
]

module.exports = (robot) ->
  robot.respond /lunch/i, (msg) ->
    shuzo = msg.random lunch
    msg.send "#{shuzo}"