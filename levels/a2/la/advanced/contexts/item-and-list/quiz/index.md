---
title: Quiz — Elementalis contextus
---

{% include menu.html %}

Quid hoc programma imprimit?

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

Contextualiser `$( … )` contextum item ponit. Itaque ordo est unus valor, non lista elementorum. Ansa `for` unum item videt. Itaque corpus suum semel tantum exsequitur. In fine `$n` est `1`. Sine `$( )` ansa ter currit.

</div>

{% include nav.html %}
