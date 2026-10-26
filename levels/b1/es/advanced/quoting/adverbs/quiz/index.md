---
title: Quiz — Adverbios de entrecomillado
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

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

`qq` normalmente interpola escalares, pero un adverbio con un `!` *desactiva* una característica. Aquí, `:!s` desactiva la interpolación escalar. Así que `$price` queda exactamente como está escrito y no se cambia por `5`.

</div>

{% include nav.html %}
