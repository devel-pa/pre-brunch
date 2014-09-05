sysPath = require 'path'
{exec}  = require 'child_process'

module.exports = class PreBrunch
  brunchPlugin: yes

  constructor: (@config) ->
    @commands = @config.plugins.preBrunch ? []

  lint: (generatedFiles) ->
    for command in @commands
      exec command, (error, stdout, stderr) ->
        console.log stdout if stdout
        console.log error.message if error
        console.log stderr if stderr

    return
