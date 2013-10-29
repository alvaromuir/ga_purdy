// Generated by CoffeeScript 1.6.3
(function() {
  var args, argv, id, pretty, site;

  argv = require('optimist').argv;

  pretty = require('./lib/ga_pretty_tag');

  id = argv.id;

  site = argv.site;

  if (argv['_'].length !== 1) {
    args = argv['_'];
  }

  if (argv['_'].length === 1) {
    args = argv['_'][0].split('');
  }

  pretty(args, id, site, function(rslt) {
    return console.log(rslt);
  });

}).call(this);
