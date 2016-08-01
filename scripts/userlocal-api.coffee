module.exports = (robot) ->
    status  = {}

    robot.enter (res) ->
        res.reply 'よろしくにゃ～'

    robot.respond /(.*)/i, (res) ->
        message = res.match[1]
        return if message is ''
        res
        .http('https://chatbot-api.userlocal.jp/api/chat')
        .headers('Content-Type': 'application/json')
        .post(JSON.stringify({ message: message, key: process.env.sample})) (err, response, body) ->
            chatmsg = JSON.parse(body).result
            res
            .http('https://chatbot-api.userlocal.jp/api/character')
            .headers('Content-Type': 'application/json')
            .post(JSON.stringify({ message: chatmsg, key: process.env.sample, character_type: "cat"})) (err, response, body) ->
                res.send JSON.parse(body).result

    robot.respond /(.*)/i, (msg) ->
        inputString = msg.match[1]
        if inputString.length == 0
            msg.reply "にゃ～ん"