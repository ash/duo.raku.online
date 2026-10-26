---
title: Quiz — Elementalis contextus
---

{% include menu.html %}

Quid sequens programma imprimit?

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

Contextualiser `$( … )` contextum item ponit. Itaque ordo est unus valor, non lista elementorum. Ideo ansa `for` unum item videt et corpus suum semel tantum exsequitur. Itaque `$n` in fine `1` est. Sine `$( )` ansa ter curreret.

</div>

{% include nav.html %}
