# Description
#   EDS Developer chat interaction for hubot
#
# Dependencies:
#  None
#
# Configuration:
#   None
#
# Commands:
#   keywords trigger hubot to respond
#
# URLS:
#  None
#
# Author:
#   eDataSource, Inc.

aromas = [
  "Can someone take my server with them to Aromas? I'd really like to experience the joy of coffee.",
  "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/coffee-01.jpg",
  "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/coffee-02.jpg",
  "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/coffee-03.jpg",
  "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/coffee-04.jpg",
  "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/coffee-05.jpg",
  "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/coffee-06.jpg",
  "Aromas?! Which one are you going to???? I'd love to tag along.",
  "Take me! Take me! Take me!",
  "Can you bring me back one of their sticky buns?",
  "Sounds great! I'll meet you at the downtown location once I learn to walk.",
  "Wouldn't it suck to spill your coffee on your laptop?",
  "Benson or Downtown?",
  "Why doesn't your company get you guys an office to work from?",
  "You do know that coffee is addictive, right?"
]

food = [
   "And that, right there, is why robots will take over the world. Humans require food, where-as, I do not.",
   "Isn't it almost dinner time?",
   "Must...eat....something....",
   "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/food-01.png",
   "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/food-02.jpg",
   "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/food-03.png",
   "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/food-04.jpg",
   "Doesn't pizza sound good? Yeah, I think pizza sounds mighty tasty.",
   "Lunch is way overrated.",
   "Let me guess... you're taking your laptop with you?",
   "/me is sad that nobody ever invites him to lunch",
   "/me wonders why nobody ever brings their lunch to work with them",
   "Does anybody want sushi for lunch?"
]

module.exports = (robot) ->
  robot.hear /\b((aromas)|(starbucks)|(dunkin))\b/i, (msg) ->
    msg.send msg.random aromas

  robot.hear /\b((food)|(lunch)|(bite)|(eat))\b/i, (msg) ->
    msg.send msg.random food
