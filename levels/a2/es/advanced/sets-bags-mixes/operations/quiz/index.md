---
title: Quiz — Conjuntos
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
say (set(1, 2) ∪ set(2, 3)).elems;
```

{:.quiz}
1 | 3
0 | 4
0 | 2
0 | 1

{% include quiz.html %}

<div class="extended-explanation">

La unión toma cada valor de los dos sets. Pero un set guarda cada valor solo una vez. El valor `2` está en los dos sets. Así que la unión es `{1, 2, 3}`. Tiene tres elementos distintos.

</div>

{% include nav.html %}
