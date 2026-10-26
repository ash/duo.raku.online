---
title: 'Solution: Una cadena cruda'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
say Q{$x and \n};
```

🦋 Encuentra el programa en el archivo [raw-string.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/raw-string.raku).

## Salida

```
$x and \n
```

## Comentarios

1. `Q` es la forma de entrecomillado más literal. No interpola nada, y no procesa secuencias de escape.

1. Así que `$x` queda como texto simple. Y `\n` queda como dos caracteres, una barra invertida y una `n`.

{% include nav.html %}
