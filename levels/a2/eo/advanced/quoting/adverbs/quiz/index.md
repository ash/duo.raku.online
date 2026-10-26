---
title: Kvizo — Citaj adverboj
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
my $price = 5;
say qq:!s{costs $price};
```

{:.quiz}
0 | costs 5
1 | costs $price
0 | costs
0 | costs {5}

{% include quiz.html %}

<div class="extended-explanation">

Kutime, `qq` interpolas skalarojn. Sed adverbo kun `!` *malŝaltas* funkcion. Ĉi tie, `:!s` malŝaltas skalaran interpoladon. Do `$price` restas ekzakte sen ŝanĝo. Raku ne anstataŭigas ĝin per `5`.

</div>

{% include nav.html %}
