cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 12 10 * * 1-5', () =>
    robot.send {room: "#std-morning"}, "みんな！今日のやること書きましたか！？ダメダメダメ、書かないまま今日はフィニッシュできないぞ！セイッッ！！Stand Up！！！"
  , null, true, "Asia/Tokyo"