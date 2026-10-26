---
title: Quiz — Avverbi di quoting
---

{% include menu.html %}

Cosa stampa questo programma?

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

Di solito, `qq` interpola gli scalari. Ma un avverbio con un `!` *disattiva* una funzionalità. Qui `:!s` disattiva l'interpolazione degli scalari. Così `$price` resta esattamente com'è. Raku non lo sostituisce con `5`.

</div>

{% include nav.html %}
