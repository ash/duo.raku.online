---
title: 'Solution: Forzar el orden'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
say 2 ** (3 + 1);
```

🦋 Puedes encontrar el código fuente en el archivo [force-the-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/force-the-order.raku).

## Salida

```
16
```

## Comentarios

1. Sin los paréntesis, `**` se uniría con más fuerza que `+`, y obtendrías `(2 ** 3) + 1 = 9`.

1. Los paréntesis suben la precedencia de la suma, así que `3 + 1` se calcula primero. La expresión se convierte en `2 ** 4`, que es `16`. Con paréntesis, siempre puedes cambiar la precedencia por defecto.

{% include nav.html %}
