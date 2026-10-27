---
title: 'Solución: Recíproco suave'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Puedes encontrar el código fuente en el archivo [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Salida

```
0.25
undefined
```

## Comentarios

1. `reciprocal(4)` funciona con normalidad y devuelve `1 / 4`, es decir, `0.25`.

1. `reciprocal(0)` llama a `fail`, así que devuelve un `Failure`, que no está definido. El operador `//` devuelve su lado derecho cada vez que su lado izquierdo no está definido. Así que obtenemos el valor de reserva `undefined`.

1. Usar `//` cuenta como manejar el fallo. Comprueba si el valor está definido, pero no usa el valor. Así que el `Failure` sigue siendo blando y nunca se lanza como una excepción real.

{% include nav.html %}
