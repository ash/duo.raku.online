---
title: 'Solution: Desbordamiento cíclico'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Un `uint8` va de `0` a `255`. Son 256 valores distintos. En realidad, toda la aritmética con él es módulo 256. El resultado es el resto de la división entre 256.

1. Normalmente, `250 + 10` es `260`. Pero `260` no cabe. Por eso el valor da la vuelta. Empieza otra vez desde abajo y llega a `260 - 256 = 4`. El desbordamiento no es solo un paso por encima del tope. Cualquier resultado fuera del rango vuelve al rango.

1. En la otra dirección también hay desbordamiento. En un tipo sin signo, decrementar `0` no puede dar `-1`. Por eso el valor da la vuelta hasta el valor más grande, `255`.

{% include nav.html %}
