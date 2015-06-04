cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 26 18 * * 1-5', () =>
    robot.send {room: "#std-morning"}, "テストだよ"
  , null, true, "Asia/Tokyo"