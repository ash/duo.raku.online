---
title: 'Solution: Repetir cada número'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. No necesitas exactamente un `take` en cada vuelta. Mira aquí el `take $n for 1..$n` interior. Ejecuta `take` un número diferente de veces en cada vuelta. Esta libertad hace que `gather`/`take` sea más potente que un simple `map`.

1. El bucle exterior tiene una variable con nombre, `-> $n`. Esto es a propósito. Imagina que usamos `$_` en el bucle interior. Entonces el `for` interior pone su propio contador en `$_`. Así que tomamos el contador, no el número actual.

1. `gather` solo recoge cada valor que toma el código, en orden. Así que `@result` tiene un `1`, dos `2`, tres `3` y cuatro `4`.

{% include nav.html %}
