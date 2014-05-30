# Description
#   Script which will linkify task ids.
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_TASKTRACKER_URL
#
# Commands:
#   (card|task|id)<optiona> #<optiona> {number}
#
# URLS:
#   None
#
# Notes:
#   None
#
# Author:
#   edatasource
module.exports = (robot) ->
  robot.hear /(?:(?:(?:pull\s*(?:request)?)|(?:pr)|(?:(?:peer)? review))[\s\?]*#?)\s*(\d+)/i,(msg) ->
    pullid = msg.match[1]
    msg.send "\#{process.env.HUBOT_GITHUB_PULL_URL}/\#{pullid}"
  
  robot.hear /(?:(?:(?:ticket|task|card|id)[\s\?]*#?))(\d+)/i, (msg) ->
    original = msg.match[0]
    taskid = msg.match[1]
    msg.send "\#{process.env.HUBOT_TASKTRACKER_URL}/\#{taskid}"
