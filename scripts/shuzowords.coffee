words = [
  "http://nstimes.com/uploads/2015/05/12204002.jpeg 「眉間に皺を寄せていたところで怪我が早く治るわけでもない。 むしろ、明るく危機を受け止める姿勢にこそ早く治るきっかけがある」",
  "http://nstimes.com/uploads/2015/05/12204002.jpeg 「やがて僕のレベルも知らず知らずに上がっていった。なぜなら、僕が戦う相手は、いつも自分より強かったからである」"
]

module.exports = (robot) ->
  robot.hear /^(まき|maki|マッキー|西木野|真姫).*gif/i, (msg) ->
    gifs = msg.random words
    msg.send "はいどうぞ💖 #{gifs}"