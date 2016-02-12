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
- animate me <query> - Return an animated GIF of <query>\n 
- countdown set event mm-dd-yyyy\n 
- image me <query> - Image of <query>\n
- kevin remind me tomorrow/in 10 minues/at 5 PM/on 10th Feb (in chat for reminder on chat, dm to get a personal remider)\n
- kevin (list|show|all) remind[ers]\n
- kevin im bored - Shows random blog/article (hardcoded values for now)\n
- kevin ping - Reply with pong\n
- kevin swanson me - Random Swanson quote.\n
- kevin screenshot me URL (awaiting browserstack license)"


