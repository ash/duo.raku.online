---
title: Quiz — La estrella Whatever
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
my @a = 5, 6, 7, 8, 9;
say @a[*-2];
```

{:.quiz}
1 | 8
0 | 7
0 | 9
0 | 3

{% include quiz.html %}

<div class="extended-explanation">

En un subíndice, la estrella sola es el número de elementos. Aquí, vale `5`. Así que `*-2` es el índice `3`. Contamos desde cero. El elemento en el índice `3` es `8`.

</div>

{% include nav.html %}
