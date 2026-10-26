---
title: 'Solution: Los últimos tres'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Code

```raku
say (5, 10 ... 50).tail(3);
```

🦋 Puedes encontrar el código fuente en el archivo [last-three.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/last-three.raku).

## Salida

```
(40 45 50)
```

## Comentarios

1. Las semillas, o valores iniciales, `5, 10` fijan un paso aritmético de cinco. La secuencia llega hasta su punto final `50`.

1. `tail(3)` devuelve los últimos tres valores de la secuencia finita: `40, 45, 50`. Del mismo modo, `head` devolvería los primeros.

{% include nav.html %}
