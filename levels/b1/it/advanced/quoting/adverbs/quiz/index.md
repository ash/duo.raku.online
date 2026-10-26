---
title: Quiz — Avverbi di quoting
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

`qq` di solito interpola gli scalari, ma un avverbio con un `!` *disattiva* una funzionalità. Qui `:!s` disattiva l'interpolazione degli scalari. Quindi `$price` resta esattamente come è scritto e non viene sostituito da `5`.

</div>

{% include nav.html %}
