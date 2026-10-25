---
title: Konvertante tipojn uzante konstruistajn formojn
---

{% include menu.html %}

Simila maniero estas krei novan objekton de la tipo, kiun vi bezonas. Por tio, vi vokas ĝian konstruiston, kiu havas la saman nomon kiel la tipo. Ekzemple:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Ĉi tie, ŝnuro kun glitkoma nombro en ĝi estas konvertita al entjero.

{% include nav.html %}
