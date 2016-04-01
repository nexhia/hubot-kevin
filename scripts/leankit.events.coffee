hubotEventHandler = false

handleEvent = (event) ->
  if !hubotEventHandler
    console.log('No Event handler')
  else
    hubotEventHandler(event)

moment = require 'moment'
AmqpListener = require './amqpListener'

settings = require './settings'

amqpListener = new AmqpListener handleEvent, settings.rabbit

amqpListener.start()

sendCardMovedEvent = (robot, event) ->
  #https://api.slack.com/docs/attachments for more message stuff

  if settings.kevin.laneIds.indexOf(event.message.boardEvent.ToLaneId) == -1
    return

  console.log(new Date(), "Message sent for card", event.message.card.ExternalCardIdPrefix + " " + event.message.card.ExternalCardID)
  
  eventAt = moment(event.message.boardEvent.EventDateTime).format('HH:mm:ss')

  robot.emit 'slack-attachment', {
        channel: settings.kevin.channel,
        attachments: [
          {
            title: "Card moved into QA WIP",
            fallback: "Card moved into QA WIP",
            text: event.message.boardEvent.Message,
            color: "#00B159",
            fields: [
              {
                "title": "Board name",
                "value": event.message.card.BoardTitle,
                "short": true
              },
              {
                "title": "Event At",
                "value": eventAt,
                "short": true
              }
            ]
          }
        ]
      }

module.exports = (robot) ->
  hubotEventHandler = (event) ->
    # "type":"leankit_board_event",
    if event.type != "leankit_board_event"
      return

    if event.team != "qa"
      return

    if !event.message
      return

    switch event.message.boardEvent.EventType
      when "CardMoveEvent" then sendCardMovedEvent robot, event
      else 
        return