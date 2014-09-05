sysPath = require 'path'
require 'shelljs/global'

module.exports = class PreBrunch
  brunchPlugin: yes
  type: 'javascript'
  extension: '*'

  executed: false

  constructor: (@config) ->
    @commands = @config.plugins.preBrunch ? []

  lint: (data, path, callback) ->
    return callback null if @executed
    for command in @commands
#      exec command, (error, stdout, stderr) ->
#        console.log stdout if stdout
#        console.log error.message if error
#        console.log stderr if stderr
      exec command
    @executed = true
    callback null
  onCompile: () ->
    @executed = true
    return
