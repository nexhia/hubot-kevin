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

  attachmentColour = "#bcbcbc"

  if settings.kevin.laneColours[event.message.boardEvent.ToLaneId.toString()] == undefined
    attachmentColour = settings.kevin.laneColours.default
  else
    attachmentColour = settings.kevin.laneColours[event.message.boardEvent.ToLaneId.toString()]
  console.log("the colour was", attachmentColour)
  console.log(new Date(), "Message sent for card", event.message.card.ExternalCardIdPrefix + " " + event.message.card.ExternalCardID)
  
  eventAt = moment(event.message.boardEvent.EventDateTime).format('HH:mm:ss')

  robot.emit 'slack-attachment', {
        channel: settings.kevin.channel,
        attachments: [
          {
            title: "Card moved into QA on board " + event.message.card.BoardTitle,
            fallback: "",
            text: event.message.boardEvent.Message,
            color: attachmentColour,

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