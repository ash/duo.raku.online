---
title: Kvizo — Pintaj blokoj
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

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

Pinta bloko povas havi plurajn parametrojn. `-> $a, $b` prenas du. Ĉi tie, la programo ne konservas la blokon en variablo. La bloko estas en krampoj. La programo tuj vokas ĝin kun `(3, 4)`. Do `$a` ricevas `3`, kaj `$b` ricevas `4`. La bloko multiplikas ilin. La rezulto estas `12`. Poste `.say` ĉe la fino presas ĝin.

</div>

{% include nav.html %}
