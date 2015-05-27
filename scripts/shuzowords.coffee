words = [
  "「眉間に皺を寄せていたところで怪我が早く治るわけでもない。 むしろ、明るく危機を受け止める姿勢にこそ早く治るきっかけがある」",
  "「やがて僕のレベルも知らず知らずに上がっていった。なぜなら、僕が戦う相手は、いつも自分より強かったからである」"
]

module.exports = (robot) ->
  robot.hear /(つかれた|疲れた|つかれ|疲れ|励まして)/i, (msg) ->
    shuzo = msg.random words
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send "http://nstimes.com/uploads/2015/05/12204002.jpeg?#{timestamp}  #{shuzo}"