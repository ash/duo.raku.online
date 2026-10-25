---
title: Konvertante tipojn uzante tipajn devigmetodojn
---

{% include menu.html %}

Por konverti, aŭ _devigi_, valoron al alia tipo, voku metodon. La metodo havas la saman nomon kiel la datumtipo. Ekzemple, konvertu ŝnuron al entjera nombro:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

En multaj kazoj, vi ne bezonas mem konverti valorojn. Raku faras tiun laboron por vi. La sekva kodo funkcias ĝuste kaj tiel, kiel vi atendus:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "La rezulto estas $c."; # La rezulto estas 30.
```

La variabloj `$a` kaj `$b` enhavas ŝnurojn. Sed ili estas uzataj en kalkulo kun `+`. En tiu momento, ambaŭ ŝnuroj estas konvertitaj al entjeroj, do `$c` ankaŭ ricevas entjeron. En la lasta linio, la variablo kun la entjero estas interpolita en ŝnuron. Raku faras tion, kio necesas por montri la nombron kiel ciferajn karakterojn.

{% include nav.html %}
