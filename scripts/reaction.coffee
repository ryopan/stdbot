cron = require('cron').CronJob

words = [
"そんなことよりテニスだ！",
"もっと熱くなれよ！",
"ﾜｲﾜｲ!",
"全員修造〜〜〜〜〜！！！"
]

module.exports = (robot) ->
  robot.hear /@shuzobot/i, (msg) ->
    shuzo = msg.random words
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send "@#{msg.message.user.name}  #{shuzo}"