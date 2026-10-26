---
title: Quiz — Precedencia
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

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

`**` tiene mayor precedencia que `*`. Así, Raku calcula primero la potencia: `3 ** 2` es `9`. Después, `2 * 9` es `18`. No lo leas de izquierda a derecha como `(2 * 3) ** 2`. Eso da la respuesta incorrecta, `36`.

</div>

{% include nav.html %}
