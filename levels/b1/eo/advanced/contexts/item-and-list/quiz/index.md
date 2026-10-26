---
title: Kvizo — Era kunteksto
---

{% include menu.html %}

Kion presas la sekva programo?

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

La kuntekstigilo `$( … )` agordas eran kuntekston. Do la tabelo estas unuopa valoro kaj ne listo de elementoj. Tial la buklo `for` vidas unu eron kaj rulas sian korpon nur unufoje. Do `$n` finiĝas je `1`. Sen `$( )`, la buklo ruliĝus tri fojojn.

</div>

{% include nav.html %}
