# Deploy apps to staging using capistrano
#first version at 2011/12/20 



module.exports = (robot) ->
  robot.hear /deploy staging (.*)/i, (msg) ->
    msg.send msg.random images
