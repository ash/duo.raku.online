---
title: 'Solution: Cuadrados'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. La comprobación `if $_ %% 2` decide *si* el código toma un valor. `$_ ** 2` decide *qué* toma. Solo los números pares `2`, `4`, `6` pasan la comprobación.

1. Sus cuadrados son `4`, `16`, `36`. Solo estos valores van a `take`. Así que `gather` recoge exactamente estos valores. Aquí, un solo `take` elige y también cambia los valores. Un simple `map` no puede decir esto tan claramente.

{% include nav.html %}
