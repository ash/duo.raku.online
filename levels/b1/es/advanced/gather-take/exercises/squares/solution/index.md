---
title: 'Solution: Cuadrados'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my @squares = gather for 1..6 {
    take $_ ** 2 if $_ %% 2;
};

say @squares;
```

🦋 Encuentra el programa en el archivo [squares.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/squares.raku).

## Salida

```
[4 16 36]
```

## Comentarios

1. La comprobación `if $_ %% 2` decide *si* se toma un valor, y `$_ ** 2` decide *qué* se toma. Solo los números pares `2`, `4`, `6` pasan esta comprobación.

1. Sus cuadrados `4`, `16`, `36` son los únicos valores que se dan a `take`. Así que `gather` recoge exactamente esos. Aquí, un solo `take` filtra y cambia los valores a la vez. Un simple `map` no puede expresar esto con tanta claridad.

{% include nav.html %}
