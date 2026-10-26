---
title: Kvizo — Era kunteksto
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
my @a = 1, 2, 3;
my $n = 0;
$n++ for $(@a);
say $n;
```

{:.quiz}
0 | 3
1 | 1
0 | 0
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

La kuntekstigilo `$( … )` agordas eran kuntekston. Do la tabelo estas unu sola valoro, ne listo de elementoj. La buklo `for` vidas unu eron. Do ĝi rulas sian korpon nur unufoje. Fine `$n` estas `1`. Sen `$( )`, la buklo ruliĝas tri fojojn.

</div>

{% include nav.html %}
