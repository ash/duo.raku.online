---
title: Quiz — Despacho con `where`
translations_gpt:
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

```raku
multi sub f(Int $n where $n %% 2) { say 'even' }
multi sub f(Int $n)               { say 'odd' }

f(4);
```

{:.quiz}
1 | even
0 | odd
0 | both
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

`4` cumple la condición `where $n %% 2`. Así que Raku elige el candidato más específico, que imprime `even`. El candidato con un `Int` simple recoge todo lo que no cumple la condición.

</div>

{% include nav.html %}
