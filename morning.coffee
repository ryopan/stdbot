cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 05 18 * * 1-5', () =>
    robot.send, "テストだよ"
  , null, true, "Asia/Tokyo"