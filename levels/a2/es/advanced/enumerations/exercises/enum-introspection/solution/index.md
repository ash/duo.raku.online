---
title: 'Solution: Contar y totalizar'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
enum Coin (penny => 1, nickel => 5, dime => 10, quarter => 25);

say Coin.enums.elems;
say Coin.enums.values.sum;
```

🦋 Puedes encontrar el código fuente en el archivo [enum-introspection.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/enum-introspection.raku).

## Salida

```
4
41
```

## Comentarios

1. Escribimos las constantes como pares. Así elegimos el valor de cada constante. Raku no las numera desde cero.

1. `.enums` devuelve un mapa. Un mapa es como un hash. En él, cada nombre de constante tiene su valor. `.elems` cuenta las entradas. Hay cuatro monedas.

1. `.values` toma solo los números detrás de los nombres. `.sum` los suma: `1 + 5 + 10 + 25` es `41`.

{% include nav.html %}
