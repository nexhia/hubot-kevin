# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
  
  robot.hear /bacon/i, (res) ->  
    res.send ":scream: You no kill Kevin :scream:"

  robot.hear /pizza/i, (res) ->  
    res.send "*OMNOMNOMNOM*"  

  robot.hear /idiot/i, (res) ->  
    res.send ":cry:"   

  robot.hear /meat pie/i, (res) ->  
    res.send "That pie is a lie!"     

  robot.hear /thanks kevin|thanks @kevin/i, (res) ->  
    res.send "You're welcome :simple_smile:" 

  robot.hear /You're amazing kevin/i, (res) ->  
    res.send "I know :simple_smile:" 

  robot.hear /youre amazing kevin/i, (res) ->  
    res.send "I know :simple_smile:"  

  robot.hear /#nerdlife/i, (res) ->  
    res.send "https://img.printfection.com/9/14433079/ltwdr.jpg"    

  robot.hear /push/i, (res) ->  
    res.send "https://s-media-cache-ak0.pinimg.com/originals/4e/2e/53/4e2e533434ab4091c3293ec14a9cb8ed.jpg" 

  greeting = ['Hi', 'Hello', 'Yo!', 'Hola!']
  
  robot.respond /hello/i, (res) ->
    res.reply res.random greeting

  robot.hear /joeback/i, (res) ->  
     res.send "http://40.media.tumblr.com/404ecaafb64455fefeb1a49ce70eaa28/tumblr_nwfe2pyDt41ujvkoro1_500.jpg" 

  images = [
   "http://s3.amazonaws.com/kym-assets/photos/images/original/000/114/151/14185212UtNF3Va6.gif?1302832919",
  "http://s3.amazonaws.com/kym-assets/photos/images/newsfeed/000/110/885/boss.jpg",
  "http://assets.head-fi.org/b/b3/b3ba6b88_funny-facebook-fails-like-a-boss3.jpg",
  "http://www.demotivers.com/uploads/2011_02/02/7733_1292_500_Like-A-Boss.jpg",
  "http://images.cheezburger.com/completestore/2011/2/20/a4ea536d-4b21-4517-b498-a3491437d224.jpg",
  "http://funcorner.eu/wp-content/uploads/2011/03/like_a_boss.jpg",
  "https://i.chzbgr.com/maxW500/6972126976/hAA5A99AF/",
  "https://i.chzbgr.com/maxW500/6669391104/h7509954E/",
  "http://i.imgur.com/eNXkb.gif",
  "http://i.imgur.com/WN8Ud.gif",
  "http://i.imgur.com/9y0VV.gif",
  "http://i.imgur.com/68Jtv.gif",
  "http://i.imgur.com/B0ehW.gif",
  "http://i.imgur.com/3GU2Q.gif",
  "http://i.imgur.com/Z3aAs.gif",
  "http://i.imgur.com/diA9N.gif",
  "http://i.imgur.com/ze3MJ.gif",
  "http://i.imgur.com/rBvJany.gif"
  ]

  robot.hear /like a boss/i, (msg) ->
    msg.send msg.random images   
     

  #
  # robot.respond /open the (.*) doors/i, (res) ->
  #   doorType = res.match[1]
  #   if doorType is "pod bay"
  #     res.reply "I'm afraid I can't let you do that."
  #   else
  #     res.reply "Opening #{doorType} doors"
  #
  # robot.hear /I like pie/i, (res) ->
  #   res.emote "makes a freshly baked pie"
  #
  # lulz = ['lol', 'rofl', 'lmao']
  #
  # robot.respond /lulz/i, (res) ->
  #   res.send res.random lulz
  #
  # robot.topic (res) ->
  #   res.send "#{res.message.text}? That's a Paddlin'"
  #
  #

  #
  # answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  #
  # robot.respond /what is the answer to the ultimate question of life/, (res) ->
  #   unless answer?
  #     res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
  #     return
  #   res.send "#{answer}, but what is the question?"
  #
  # robot.respond /you are a little slow/, (res) ->
  #   setTimeout () ->
  #     res.send "Who you calling 'slow'?"
  #   , 60 * 1000
  #
  # annoyIntervalId = null
  #
  # robot.respond /annoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #     return
  #
  #   res.send "Hey, want to hear the most annoying sound in the world?"
  #   annoyIntervalId = setInterval () ->
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #   , 1000
  #
  # robot.respond /unannoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "GUYS, GUYS, GUYS!"
  #     clearInterval(annoyIntervalId)
  #     annoyIntervalId = null
  #   else
  #     res.send "Not annoying you right now, am I?"
  #
  #
  # robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
  #   room   = req.params.room
  #   data   = JSON.parse req.body.payload
  #   secret = data.secret
  #
  #   robot.messageRoom room, "I have a secret: #{secret}"
  #
  #   res.send 'OK'
  #
  # robot.error (err, res) ->
  #   robot.logger.error "DOES NOT COMPUTE"
  #
  #   if res?
  #     res.reply "DOES NOT COMPUTE"
  #
  # robot.respond /have a soda/i, (res) ->
  #   # Get number of sodas had (coerced to a number).
  #   sodasHad = robot.brain.get('totalSodas') * 1 or 0
  #
  #   if sodasHad > 4
  #     res.reply "I'm too fizzy.."
  #
  #   else
  #     res.reply 'Sure!'
  #
  #     robot.brain.set 'totalSodas', sodasHad+1
  #
  # robot.respond /sleep it off/i, (res) ->
  #   robot.brain.set 'totalSodas', 0
  #   res.reply 'zzzzz'
