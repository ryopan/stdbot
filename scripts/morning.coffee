cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 12 10 * * 1-5', () =>
    robot.send {room: "#std-morning"}, "みんな！今日のやること書きましたか！？ダメダメダメ、書かないで今日はフィニッシュできないぞ！セイッッ！！！"
  , null, true, "Asia/Tokyo"