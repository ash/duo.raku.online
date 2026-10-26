---
title: Quiz — Conjuntos
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

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

La unión reúne cada valor de los dos sets. Pero un set conserva cada valor solo una vez. Los dos sets tienen `2`, así que la unión es `{1, 2, 3}`, con tres elementos distintos.

</div>

{% include nav.html %}
