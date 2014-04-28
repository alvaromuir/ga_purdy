# Main file.


module.exports = (argv, cb) ->

  args    = argv['_'] unless argv['_'].length is 1
  args    = argv['_'][0].split('') if argv['_'].length is 1

  return "error - first argument must be an array" if not typeof args instanceof Array

  for x, y in args
    args[y] = 'var' + y if args[y] is ''


  var1 = args[0]
  var2 = args[1]
  var3 = args[2]
  var4 = args[3]
  var5 = args[4]
  var6 = args[5]
  var7 = args[6]

  id   = argv.id || ''
  site = argv.site || ''

  rslt =  "<script>\n"
  rslt += "  (function("+var1+","+var2+","+var3+","+var4+","+var5
  rslt += ","+var6+","+var7+"){"+var1+"['GoogleAnalyticsObject']="
  rslt += var5+";"+var1+"["+var5+"]="+var1+"["+var5
  rslt += "]||function(){\n"

  rslt += "  ("+var1+"["+var5+"].q="+var1+"["+var5
  rslt += "].q||[]).push(arguments)},"+var1+"["+var5+"].l=1*new Date();"
  rslt += var6+"="+var2+".createElement("+var3+"),\n"

  rslt += "  "+var7+"="+var2+".getElementsByTagName("+var3
  rslt += ")[0];"+var5+".async=1;"+var6+".src="+var4
  rslt += ";"+var7+".parentNode.insertBefore("+var6+","+var7+")\n"


  rslt += "  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');\n"
  rslt += "\n"
  rslt += "  ga('create', '"+id+"', '"+site+"');\n"
  rslt += "  ga('send', 'pageview');\n"
  rslt += "</script>"

  if argv.coffee 

    rslt = rslt.replace '<script>\n', ''
    rslt = rslt.replace '</script>', ''
    rslt = rslt.replace(/(\r\n|\n|\r)/gm,"").replace(/\s+/g,' ')
    rslt = require('js2coffee').build(rslt, indend: "    ")


  if argv.jade

    rslt =  rslt.replace '<script>\n', 'script.\n'
    rslt = rslt.replace '</script>', ''

  cb rslt if cb
  rslt
