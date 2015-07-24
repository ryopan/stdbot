lunch = [
 "http://goo.gl/VPEljG \r\n■ランチ　11:00～17:00\r\n■価格帯　780円～1000円以下",
"http://goo.gl/hx9E8J 
```■ランチ　10:00～15:00
■価格帯　500円〜1000円以下```",
"http://goo.gl/cQTDMS 
```■ランチ　11:30～14:30（L.O.14:20）
■価格帯　700円〜1000円以下```"
]

module.exports = (robot) ->
  robot.respond /lunch/i, (msg) ->
    shuzo = msg.random lunch
    msg.send "#{shuzo}"