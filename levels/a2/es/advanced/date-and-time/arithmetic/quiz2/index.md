---
title: Quiz — Sumar meses
---

{% include menu.html %}

¿Qué imprime este programa?

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

Un mes después del 31 de enero es el "31 de febrero". Pero ese día no existe. Por eso `later` da el último día real de ese mes. Es el 28 de febrero de 2026. El año 2026 no es bisiesto. Por eso febrero tiene 28 días.

</div>

{% include nav.html %}
