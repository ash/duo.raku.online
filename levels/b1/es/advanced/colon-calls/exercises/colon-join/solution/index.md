---
title: 'Solution: Join con dos puntos'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
say <a b c>.reverse.join: '-';
```

🦋 Encuentra el programa en el archivo [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Salida

```
c-b-a
```

## Comentarios

1. `.reverse` está en el medio de la cadena, así que mantiene su forma habitual. `join` va al final, así que puede usar los dos puntos. Estos pasan `'-'` exactamente igual que `join('-')`.

1. La lista invertida, `c, b, a`, se une luego con guiones, lo que da `c-b-a`. La forma con dos puntos funciona con valores normales, no solo con bloques.

{% include nav.html %}
