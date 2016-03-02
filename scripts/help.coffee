# Description:
# Due to growing list removed help script and implemented short version below.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   - kevin help - display all commands
#
# Author:
#   AJ


module.exports = (robot) ->
  
  robot.hear /kevin help/i, (res) ->  
    res.send "
*Hi! I'm Kevin, I work hard with leankit API to provide updates on moving cards for testers.*​\n
- kevin ping - pong\n
- animate me <query> - Return an animated GIF of <query>\n 
- image me <query> - Image of <query>\n
- countdown set event mm-dd-yyyy\n 
- kevin remind me tomorrow/in 10 minues/at 5 PM/on 10th Feb (in chat for reminder on chat, dm to get a personal remider)\n
- kevin (list|show|all) remind[ers]\n
- kevin insult @username - tasteful insult.\n
- kevin compliment @username - weird compliment to counter insult.\n
- kevin swanson me - Swanson quote.\n
- !ping URL/IP - return status code.\n
- http status - status description.\n
- _kevin stress URL (performance testing via kevin - in development)_\n
- _kevin stress results_\n"
- quote - picks out a film quote.\n


