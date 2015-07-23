cron = require('cron').CronJob

words = [
 "そんなことよりテニスだ！",
"もっと熱くなれよ！",
"ﾜｲﾜｲ!",
"全員修造〜〜〜〜〜！！！",
"ﾄﾞﾝｳｫｰﾘｰﾄﾞﾝｳｫｰﾘｰ!",
"頑張れ頑張れできるできる",
"もっと頑張ってくれないかな？",
"大丈夫 大丈夫！",
"迷ってるんじゃないですか？",
"そうは言ってるけど本当に命賭けてますか！？",
"頑張ろう！",
"気にしてないよーーーーー！",
"君ならできる！",
"お前しかいないんだ！",
"できるって！",
"信じてるぞ！",
"お前わかってねえんじゃねえのか！！？",
"俺は諦めないぞ！",
"打ち上げろ！",
"いくぞーーーーー！",
"http://i.imgur.com/EOEmhPi.gif",
"http://i.imgur.com/0cQgMv7.gif",
"http://i.imgur.com/hHE3D2m.gif",
"http://i.imgur.com/Y1iCoGe.gif",
"http://i.imgur.com/MKv11Sv.gif",
"http://i.imgur.com/TlXAEau.gif",
"http://i.imgur.com/DJhcfgK.gif",
"http://i.imgur.com/0bYMbDa.gif",
"http://i.imgur.com/IM0cQLd.gif",
"http://i.imgur.com/Vutj8wl.gif",
"そんな大人、修造してやる！",
"今日はもう帰ろう、な？",
"あとでテニスコート裏集合な",
"今を生きろ！",
"君は今、泣いていい！",
"弱い、弱いよ〜〜〜〜〜",
"世界が許しても俺が許さねぇ！"
]

module.exports = (robot) ->
  robot.respond /@shuzobot/i, (msg) ->
    shuzo = msg.random words
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.reply "#{shuzo}"