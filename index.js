// Generated by CoffeeScript 1.7.1
(function() {
  var argv, pretty;

  argv = require('minimist')(process.argv.slice(2));

  pretty = require('./lib/ga_pretty_tag');

  if (argv.coffee && argv.jade) {
    console.log('\n');
    console.log("error: cannot combine --coffee with --jade");
    return;
  }

  pretty(argv, function(rslt) {
    return console.log(rslt);
  });

}).call(this);
