---
title: Quiz — Sumar meses
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

```raku
say Date.new(2026, 1, 31).later(:months(1));
```

{:.quiz}
1 | 2026-02-28
0 | 2026-03-03
0 | 2026-02-31
0 | 2026-03-31

{% include quiz.html %}

<div class="extended-explanation">

Un mes después del 31 de enero sería el "31 de febrero", pero ese día no existe. Por eso `later` mueve el resultado hacia atrás, hasta el último día real de ese mes. Así se obtiene el 28 de febrero de 2026. Como 2026 no es un año bisiesto, febrero tiene solo 28 días.

</div>

{% include nav.html %}
