---
title: 'Solution: Contar en una bolsa'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $words = bag('the cat sat on the mat'.words);

say $words<the>;
say $words.total;
```

🦋 Encuentra el programa en el archivo [bag-count.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/bag-count.raku).

## Salida

```
2
6
```

## Comentarios

1. `'the cat sat on the mat'.words` da las seis palabras, y `bag` cuenta cada una. El subíndice `<the>` devuelve cuántas veces apareció `the`, que son dos veces.

1. El método `total` suma todos los conteos. Es lo mismo que el número de palabras que se pusieron en el bag, `6`.

{% include nav.html %}
