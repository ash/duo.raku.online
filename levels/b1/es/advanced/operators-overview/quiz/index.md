---
title: Quiz — Precedencia
translations_gpt:
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

```raku
say 2 * 3 ** 2;
```

{:.quiz}
1 | 18
0 | 36
0 | 12
0 | 81

{% include quiz.html %}

<div class="extended-explanation">

`**` tiene mayor precedencia que `*`, así que la exponenciación va primero. `3 ** 2` es `9`, y después `2 * 9` es `18`. Si lo lees de izquierda a derecha como `(2 * 3) ** 2`, obtienes la respuesta incorrecta, `36`.

</div>

{% include nav.html %}
