# Main file.

argv    = require('minimist') process.argv.slice(2)
pretty  = require './lib/ga_pretty_tag'

# console.log argv

pretty argv, (rslt) ->
  console.log rslt
