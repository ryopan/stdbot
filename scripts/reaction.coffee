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
"http://i.imgur.com/vP59PMI.gif?#{timestamp}"
]

module.exports = (robot) ->
  robot.respond /@shuzobot/i, (msg) ->
    shuzo = msg.random words
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.reply "#{shuzo}"