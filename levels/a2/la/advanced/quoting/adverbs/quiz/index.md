---
title: Quiz — Adverbia quotationis
---

{% include menu.html %}

Quid hoc programma imprimit?

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

Plerumque `qq` scalares interpolat. Sed adverbium cum `!` proprietatem *exstinguit*. Hic `:!s` interpolationem scalarem exstinguit. Itaque `$price` exacte ut est manet. Raku pro ea `5` non ponit.

</div>

{% include nav.html %}
