prettyjson = require 'prettyjson'
module.exports =
  send: (item, print) ->
    console.log prettyjson.render item