---
title: Kvizo — Pintaj blokoj
translations_gpt:
---

{% include menu.html %}

Kion presas la jena programo?

```raku
(-> $a, $b { $a * $b })(3, 4).say
```

{:.quiz}
1 | 12
0 | 7
0 | 34
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

Pinta bloko povas havi plurajn parametrojn: `-> $a, $b` prenas du. Ĉi tie, la bloko tute ne estas konservata en variablo. Ĝi estas metita en krampojn kaj tuj vokita kun `(3, 4)`. Do `$a` ricevas `3`, kaj `$b` ricevas `4`. La bloko multiplikas ilin kaj donas `12`, kaj la `.say` ĉe la fino presas ĝin.

</div>

{% include nav.html %}
