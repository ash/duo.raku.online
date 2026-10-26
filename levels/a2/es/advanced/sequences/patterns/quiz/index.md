---
title: Quiz — El operador `...`
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

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

Aquí hay *tres* valores semilla. Así que `...` mira la razón entre ellos. La razón dice cuántas veces más grande es cada valor. En `1, 3, 9`, cada valor es tres veces el anterior. Así que la secuencia sigue como secuencia geométrica: `27, 81`. Con dos semillas, obtienes en cambio un paso aritmético.

</div>

{% include nav.html %}
