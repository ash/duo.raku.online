---
title: Quiz — Valores de enum
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
enum Day (Mon => 1, Tue => 2);
say Tue.key;
```

{:.quiz}
1 | Tue
0 | 2
0 | 1
0 | Mon

{% include quiz.html %}

<div class="extended-explanation">

`.value` da el número detrás de una constante. Pero `.key` da su *nombre* como cadena de texto. Así que `Tue.key` es `Tue`. El número `2` de esta constante aquí no importa.

</div>

{% include nav.html %}
