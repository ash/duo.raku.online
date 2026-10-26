---
title: Viktorīna — Citēšanas apzīmētāji
---

{% include menu.html %}

Ko izdrukā šī programma?

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

Parasti `qq` interpolē skalārus. Bet adverbs ar `!` *izslēdz* funkciju. Šeit `:!s` izslēdz skalāro interpolēšanu. Tāpēc `$price` paliek tieši tāds, kāds tas ir. Raku to neaizstāj ar `5`.

</div>

{% include nav.html %}
