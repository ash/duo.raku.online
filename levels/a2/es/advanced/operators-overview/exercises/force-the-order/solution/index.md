---
title: 'Solution: Forzar el orden'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Sin los paréntesis, `**` es más fuerte que `+`. Entonces obtienes `(2 ** 3) + 1 = 9`.

1. Los paréntesis dan a la suma una precedencia más alta. Así, Raku calcula primero `3 + 1`. La expresión se convierte en `2 ** 4`, y esto es `16`. Con paréntesis, siempre puedes cambiar la precedencia normal.

{% include nav.html %}
