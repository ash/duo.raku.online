---
title: Quiz — El operador `...`
translations_gpt:
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

```raku
say 1, 3, 9 ... 81;
```

{:.quiz}
1 | (1 3 9 27 81)
0 | (1 3 9 81)
0 | (1 3 5 7 ... 81)
0 | (3 9 27)

{% include quiz.html %}

<div class="extended-explanation">

Con *tres* valores semilla, `...` mira la razón entre ellos. En `1, 3, 9`, cada valor es tres veces el anterior. Así que la secuencia continúa como una secuencia geométrica: `27, 81`. Con dos semillas, fijaría en cambio un paso aritmético.

</div>

{% include nav.html %}
