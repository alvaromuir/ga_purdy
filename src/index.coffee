# Main file.

argv    = require('optimist').argv
pretty  = require './lib/ga_pretty_tag'

id      = argv.id
site    = argv.site
  
args    = argv['_'] unless argv['_'].length is 1
args    = argv['_'][0].split('') if argv['_'].length is 1

pretty args, id, site, (rslt) ->
  console.log rslt