---
title: Quiz — Aritmética de fechas
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

```raku
say Date.new(2026, 1, 28) + 5;
```

{:.quiz}
1 | 2026-02-02
0 | 2026-01-33
0 | 2026-02-05
0 | 2026-02-03

{% include quiz.html %}

<div class="extended-explanation">

Si sumas un entero, la fecha avanza ese número de días. Pasa al mes siguiente automáticamente. Cinco días después del 28 de enero de 2026 es el 2 de febrero. Son los últimos tres días de enero (29, 30, 31) y luego dos más.

</div>

{% include nav.html %}
