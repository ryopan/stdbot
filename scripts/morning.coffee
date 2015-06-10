cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '30 00 20 * * 1-5', () =>
    robot.send {room: "#std-morning"}, "テストだぞい"
  , null, true, "Asia/Tokyo"
  
  module.exports = (robot) ->
  new cron '05 00 20 * * 1-5', () =>
    robot.send {room: "#std-morning"}, "テストだぞい その2"
  , null, true, "Asia/Tokyo"