# Main file.
module.exports = (vars, googleId, website, cb) ->
  return "error - first argument must be an array" if not typeof args instanceof Array

  for x, y in vars
    vars[y] = 'var' + y if vars[y] is ''


  var1 = vars[0]
  var2 = vars[1]
  var3 = vars[2]
  var4 = vars[3]
  var5 = vars[4]
  var6 = vars[5]
  var7 = vars[6]

  id   = googleId || ''
  site = website || ''

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

  cb rslt if cb
  rslt