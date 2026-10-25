---
title: Konvertante tipojn uzante tipajn devigmetodojn
---

{% include menu.html %}

Vi povas konverti valoron al alia tipo. Alia vorto por tio estas _devigi_. Por fari tion, voku metodon. Ĝia nomo estas la nomo de la datumtipo. Ekzemple, konvertu ŝnuron al entjero:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

Ofte vi ne bezonas mem konverti valorojn. Raku faras tion por vi. Ĉi tiu kodo funkcias ĝuste kaj kiel vi atendas:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "La rezulto estas $c."; # La rezulto estas 30.
```

La du variabloj, `$a` kaj `$b`, enhavas ŝnurojn. Sed la esprimo adicias ilin per `+`. Do ĉi tie Raku konvertas ambaŭ ŝnurojn al entjeroj. Tiam `$c` ankaŭ ricevas entjeron. En la lasta linio, Raku interpolas ĉi tiun variablon en ŝnuron. Por tio, Raku faras el la nombro ciferajn karakterojn.

{% include nav.html %}
