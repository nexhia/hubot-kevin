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
- countdown set event mm-dd-yyyy\n 
- kevin remind me _time_ to _task_\n
- kevin insult - tasteful insult.\n
- kevin compliment - weird compliment to counter insult.\n
- kevin swanson me - Swanson quote.\n
- http status - status description.\n
- quote - film quote.\n
- randoms: _joeback, iancat, like a boss_"


