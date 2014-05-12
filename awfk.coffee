# Description
#   witty comments when someone says awfk or brb
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   afwk or brb
#
# URLS:
#   None
#
# Author:
#   eDataSource

messages = [
        "I'll miss you while you're gone",
        "I'll make sure to keep your coffee warm while you're away.",
        "Ah man... you're going to miss the best part of the movie!",
        "Yeah, we know... that's what sqwiggle is for.",
        "Quick! someone steal the laptop!",
        "I didn't realize you were at your keyboard...",
        "Are you coming back?",
        "/me is crying",
        "That's probably a good idea, your keyboard was just telling me how angry you seemed at it.",
        "Not sure anybody would have noticed had you not said something...",
        "I'm sailing away...http://www.youtube.com/watch?v=JcmOe2geZ4Q",
        "Be careful... last time someone stepped away from their keyboard, they made a movie about them: http://www.youtube.com/watch?v=KCAGb7oSwDs",
        "Oh, that's nice. Can you take a picture of the sun and show it to me? I've never seen the sun.",
        "Yeah... we know you're going to watch the Big Bang Theory... http://www.youtube.com/watch?v=2qWRng6bR-I&list=RDBuBQy_iu7XQ"
]

module.exports = (robot) ->
  robot.hear /(aw?fk|brb|step(ping)? (out|away))/i, (msg) ->
    msg.send msg.random messages
