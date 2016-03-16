# Description:
#   A hubot script return an open lunch shop now from trello cards.
#
# Requirement:
#   Required following environment variable.
#    export HUBOT_TRELLO_API_KEY=<trello_api_key>
#    export HUBOT_TRELLO_API_TOKEN=<trello_api_token>
#    export HUBOT_TRELLO_BOARD=<trello_board_id(for lunch)>
# 
# Dependencies:
#   node-trello (https://github.com/adunkman/node-trello)
#
#   Add to your package.json dependencies, and run `npm install`
#     ex) 
#       "dependencies": {
#           ...
#           "node-trello": "*",
#           ...
#       },
#
# Commands:
#   hubot lunch me - Return an open lunch shop now from trello cards
#   hubot lunch me <label> - Return an open lunch shop from trello cards specified by label
#
# Author:
#   asmz

Trello = require 'node-trello'

# Check environment variables
checkEnv = (logger) ->
  logger.warning 'Required HUBOT_TRELLO_API_KEY environment.' if not process.env.HUBOT_TRELLO_API_KEY
  logger.warning 'Required HUBOT_TRELLO_API_TOKEN environment.' if not process.env.HUBOT_TRELLO_API_TOKEN
  logger.warning 'Required HUBOT_TRELLO_BOARD environment.' if not process.env.HUBOT_TRELLO_BOARD
  return false if not (process.env.HUBOT_TRELLO_API_KEY and process.env.HUBOT_TRELLO_API_TOKEN and process.env.HUBOT_TRELLO_BOARD)
  return true

# Select cards by open now
selectCardsByOpenNow = (cards) ->
  selectedCards = []
  for card in cards
    open = card.desc.match(/open\s(\d+):(\d+)/)
    opentime = if open then ("0" + open[1]).slice(-2) + ("0" + open[2]).slice(-2) else "0000"
    
    close = card.desc.match(/close\s(\d+):(\d+)/)
    closetime = if close then ("0" + close[1]).slice(-2) + ("0" + close[2]).slice(-2) else "2359"
    
    now = new Date
    nowtime = ("0" + now.getHours()).slice(-2) + ("0" + now.getMinutes()).slice(-2)
    
    selectedCards.push(card) if opentime <= nowtime && nowtime < closetime
  return selectedCards

# Select cards specified by label
selectCardsByLabel = (cards, label) ->
  selectedCards = []
  for card in cards
    for cLabel in card.labels
      selectedCards.push(card) if cLabel.name == label
  return selectedCards

# hubot main
module.exports = (robot) ->
  return if !checkEnv robot.logger

  trello = new Trello process.env.HUBOT_TRELLO_API_KEY, process.env.HUBOT_TRELLO_API_TOKEN

  robot.respond /trell me ?(.+)?/i, (msg) ->
    label = msg.match[1]

    # Get trello cards
    trello.get "/1/boards/#{process.env.HUBOT_TRELLO_BOARD}", {cards: "open"}, (err, data) ->
      if err
        msg.send "あ、今ちょっとTrelloエラー"
        return

      # Select cards by open now
      cards = selectCardsByOpenNow data.cards

      # Select cards specified by label
      cards = selectCardsByLabel cards, label if label

      if cards.length == 0
        msg.send "今ランチやってるお店はないなぁ〜"
        return

      # Get attachments
      trello.get "/1/cards/#{card.id}/attachments", {cards: "open"}, (err, attachments) ->
        if err
          msg.send "あ、今ちょっとTrelloエラー"
          return
        imageUrl = if attachments.length > 0 then (msg.random attachments).url else ""

        answer = "こことかどうかな〜？"
        answer += "\n#{card.name} - #{card.shortUrl}"
        answer += "\n#{card.desc}" if card.desc
        answer += "\n#{imageUrl}" if imageUrl
        msg.send answer