---
title: 'Solution: Los últimos tres'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Las semillas son los valores del principio: `5, 10`. Dan un paso de cinco. La secuencia sube hasta su punto final, `50`.

1. `tail(3)` devuelve los últimos tres valores de la secuencia: `40, 45, 50`. La secuencia es finita, así que tiene un final. `head` funciona de la misma manera. Devuelve los primeros valores.

{% include nav.html %}
