module.exports = (robot) ->

  if process.env.HUBOT_ANNOUNCE_ROOMS
    allRooms = process.env.HUBOT_ANNOUNCE_ROOMS.split(',')
  else
    allRooms = []

  robot.respond /announce "(.*)"/i, (msg) ->
    announcement = msg.match[1]
    for room in allRooms
      robot.messageRoom room, announcement

  robot.respond /announce downtime for "(.*)" starting (.*)/i, (msg) ->
    user = msg.message.user
    service = msg.match[1]
    startTime = msg.match[2]

    message = ["The '#{service}' service will be going down for maintenance starting #{startTime}.",
      "If you have questions about this maintenance, I don't care (if you need more info speak to #{user.name}). Now as you were..."]

    for room in allRooms
      robot.messageRoom room, message...
    msg.reply "Don't forget to pause monitoring for this service."

  robot.respond /announce downtime complete for "(.*)"/i, (msg) ->
    service = msg.match[1]
    for room in allRooms
      robot.messageRoom room, 
          "Maintenance for the '#{service}' service is complete."
    msg.reply "Don't forget to resume monitoring for this service."

  robot.router.post "/broadcast/create", (req, res) ->
    if req.body.rooms
      rooms = req.body.rooms.split(',')
    else
      rooms = allRooms

    for room in rooms
      robot.messageRoom room, req.body.message
    res.end "Message Sent"