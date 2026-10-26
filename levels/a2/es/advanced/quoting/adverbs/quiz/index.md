---
title: Quiz — Adverbios de entrecomillado
---

{% include menu.html %}

¿Qué imprime este programa?

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

Normalmente, `qq` interpola escalares. Pero un adverbio con un `!` *desactiva* una característica. Aquí, `:!s` desactiva la interpolación escalar. Así que `$price` queda exactamente como está. Raku no lo cambia por `5`.

</div>

{% include nav.html %}
