---
title: Quiz — Bloques pointy
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

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

Un bloque puntiagudo puede tener varios parámetros. `-> $a, $b` toma dos. Aquí, el programa no guarda el bloque en una variable. El bloque está entre paréntesis. El programa lo llama enseguida con `(3, 4)`. Así que `$a` recibe `3`, y `$b` recibe `4`. El bloque los multiplica. El resultado es `12`. Después, `.say` al final lo imprime.

</div>

{% include nav.html %}
