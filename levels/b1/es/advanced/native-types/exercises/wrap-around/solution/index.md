---
title: 'Solution: Desbordamiento cíclico'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my uint8 $u = 250;
$u += 10;
say $u;

my uint8 $v = 0;
$v--;
say $v;
```

🦋 Encuentra el programa en el archivo [wrap-around.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/wrap-around.raku).

## Salida

```
4
255
```

## Comentarios

1. Un `uint8` va de `0` a `255`, así que tiene 256 valores distintos. En la práctica, la aritmética con él se hace módulo 256.

1. `250 + 10` sería `260`, que no cabe. Así que el valor da la vuelta y queda `260 - 256 = 4` por encima del mínimo. Esto significa que el desbordamiento no consiste solo en pasar un paso por encima del tope. Cualquier resultado fuera del rango vuelve a entrar en él.

1. Ir en la otra dirección también causa desbordamiento. En un tipo sin signo, decrementar `0` no puede dar `-1`. Así que da la vuelta hasta el máximo, `255`.

{% include nav.html %}
