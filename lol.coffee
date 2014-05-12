# Description
#   Returns an image of an animal laughing when 'lol' it detected
#
# Dependencies:
#  None
#
# Configuration:
#   None
#
# Commands:
#  lol
#
# URLS:
#   None
#
# Notes:
#
# Author:
#   eDataSource

images = [
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-01.jpg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-02.jpg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-05.jpg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-09.jpg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-10.jpg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-13.jpg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-14.jpg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-15.jpeg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-17.jpg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-20.jpg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-21.jpg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-22.jpg",
        "http://s3.amazonaws.com/hubot-images.s3.aws.edatasource.com/laughing-animals-27.jpg"
]

module.exports = (robot) ->
  robot.hear /(lol|rofl|lolz|(h[ae]h[ae]))/i, (msg) ->
    msg.send msg.random images
