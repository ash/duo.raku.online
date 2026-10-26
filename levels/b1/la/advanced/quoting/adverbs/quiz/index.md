---
title: Quiz — Adverbia quotationis
---

{% include menu.html %}

Quid sequens programma imprimit?

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

`qq` plerumque scalares interpolat, sed adverbium cum `!` proprietatem *exstinguit*. Hic `:!s` interpolationem scalarem exstinguit. Itaque `$price` exacte ut scripta est manet, nec `5` eius locum capit.

</div>

{% include nav.html %}
