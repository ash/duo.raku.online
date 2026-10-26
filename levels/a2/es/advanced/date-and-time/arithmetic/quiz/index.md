---
title: Quiz — Aritmética de fechas
---

{% include menu.html %}

¿Qué imprime este programa?

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

Sumas un entero. La fecha avanza ese número de días. Pasa al mes siguiente por sí sola. Mira cinco días después del 28 de enero de 2026. Enero tiene tres días más: 29, 30 y 31. Luego vienen dos días más. Así que la respuesta es el 2 de febrero.

</div>

{% include nav.html %}
