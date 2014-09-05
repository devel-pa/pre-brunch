sysPath = require 'path'
{exec}  = require 'child_process'

module.exports = class PreBrunch
  brunchPlugin: yes
  type: 'javascript'
  extension: 'js'

  executed: false

  constructor: (@config) ->
    @commands = @config.plugins.preBrunch ? []

  lint: (data, path, callback) ->
    return if @executed
    for command in @commands
      exec command, (error, stdout, stderr) ->
        console.log stdout if stdout
        console.log error.message if error
        console.log stderr if stderr
    @executed = true
    callback null
