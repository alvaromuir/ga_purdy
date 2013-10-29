#GA Purdy Tag

###So you're into unicorns, rainbows and cute little Google analytics tags are you?

Here's a quick coffeescript/node app to do just that for you, lil' buddy.


_note:_ Built in coffee script, but includes compiled js.


__Example terminal usage:__

```
$ node ./index.js gapurdy --site yoursite.com --id UA-12345678
```


__Example module usage usage:__


```
var pretty = require('./lib/ga_pretty_tag');

var args  = 'gapurdy'
var id    = 'UA-12345678'
var site  = 'yoursite.com'

pretty(args, id, site, function(rslt) {
    return console.log(rslt);
  });
```


__both examples will return__

```
<script>
  (function(g,a,p,u,r,d,y){g['GoogleAnalyticsObject']=r;g[r]=g[r]||function(){
  (g[r].q=g[r].q||[]).push(arguments)},g[r].l=1*new Date();d=a.createElement(p),
  y=a.getElementsByTagName(p)[0];r.async=1;d.src=u;y.parentNode.insertBefore(d,y)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-12345678', 'yoursite.com');
  ga('send', 'pageview');
</script>
```


ToDo:
 - make this a npm module


 Alvaro Muir, @alvaromuir