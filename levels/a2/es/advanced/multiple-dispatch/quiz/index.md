---
title: Quiz — Despacho con `where`
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

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

La condición `where $n %% 2` es verdadera para `4`. Así que Raku elige el candidato más específico. Este imprime `even`. El otro candidato solo tiene `Int`. Recibe todos los valores que no cumplen la condición.

</div>

{% include nav.html %}
