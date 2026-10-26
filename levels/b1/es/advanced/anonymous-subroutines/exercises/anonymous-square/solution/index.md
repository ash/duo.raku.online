---
title: 'Solution: Un cuadrado anónimo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Encuentra el programa en el archivo [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Salida

```
(1 4 9)
```

## Comentarios

1. El `sub ($x) { $x * $x }` no tiene nombre y nunca se guarda en una variable. Va directamente a `map` como su argumento.

1. `map` la aplica a cada elemento de `1, 2, 3` y los eleva al cuadrado, lo que da `(1 4 9)`. Pasar una subrutina anónima directamente, como aquí, es la razón más común para escribir una.

{% include nav.html %}
