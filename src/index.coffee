# Main file.

argv    = require('minimist') process.argv.slice(2)
pretty  = require './lib/ga_pretty_tag'


if argv.coffee and argv.jade
  console.log '\n'
  console.log "error: cannot combine --coffee with --jade"
  return

pretty argv, (rslt) ->
  console.log rslt
