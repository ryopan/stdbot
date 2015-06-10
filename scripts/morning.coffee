cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '30 13 10 * * 1-5', () =>
    robot.send {room: "#std-morning"}, "みんな！今日のやること書きましたか！？ダメダメダメ、書かないまま今日はフィニッシュできないぞ！ｾｲｯ! ｽﾀﾝﾀﾞｯ!!!"
  , null, true, "Asia/Tokyo"
  
  module.exports = (robot) ->
  new cron '30 02 20 * * 1-5', () =>
    robot.send {room: "#std-morning"}, "修造が今日のいい言葉をお送りします"
  , null, true, "Asia/Tokyo"