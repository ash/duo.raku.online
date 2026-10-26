---
title: Quiz — Bloques pointy
translations_gpt:
---

{% include menu.html %}

¿Que imprime el siguiente programa?

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

Un bloque puntiagudo puede tener varios parámetros: `-> $a, $b` toma dos. Aquí, el bloque no se guarda en ninguna variable. Se pone entre paréntesis y se llama enseguida con `(3, 4)`. Así que `$a` recibe `3`, y `$b` recibe `4`. El bloque los multiplica y da `12`, y el `.say` del final lo imprime.

</div>

{% include nav.html %}
