---
title: 'Solution: Repetir cada número'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my @result = gather for 1..4 -> $n {
    take $n for 1..$n;
};

say @result;
```

🦋 Encuentra el programa en el archivo [collect-the-evens.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/collect-the-evens.raku).

## Salida

```
[1 2 2 3 3 3 4 4 4 4]
```

## Comentarios

1. Nada dice que deba haber un solo `take` en cada vuelta. Aquí, el `take $n for 1..$n` interior ejecuta `take` un número diferente de veces en cada vuelta. Esta flexibilidad es justo lo que hace a `gather`/`take` más potente que un simple `map`.

1. El bucle exterior usa a propósito una variable con nombre, `-> $n`. Supón que usamos `$_` en el bucle interior. Entonces el `for` interior pondría su propio contador en `$_`. Así que tomaríamos el contador en lugar del número actual.

1. `gather` simplemente recoge cada valor tomado, en orden. Así que `@result` contiene `1`, luego dos `2`, luego tres `3` y luego cuatro `4`.

{% include nav.html %}
