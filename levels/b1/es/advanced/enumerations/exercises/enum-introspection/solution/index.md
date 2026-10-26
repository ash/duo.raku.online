---
title: 'Solution: Contar y totalizar'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. Las constantes se escriben como pares. Así cada una recibe el valor que elegimos, no los números automáticos desde cero.

1. `.enums` devuelve un mapa, donde cada nombre de constante apunta a su valor. `.elems` cuenta las entradas, y hay cuatro monedas.

1. `.values` da solo los números detrás de los nombres. Luego `.sum` los suma: `1 + 5 + 10 + 25` es `41`.

{% include nav.html %}
