---
title: 'Solution: Forzar un número'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my @a = 1, 2, 3;
say +@a;
```

🦋 Encuentra el código fuente en el archivo [force-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/force-a-number.raku).

## Salida

```
3
```

## Comentarios

1. El prefijo `+` fija el contexto numérico.

1. En contexto numérico, un array pasa a ser el número de sus elementos. Por eso el resultado es `3`.

{% include nav.html %}
