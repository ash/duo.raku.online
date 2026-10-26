---
title: 'Solution: Contar en una bolsa'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `'the cat sat on the mat'.words` da las seis palabras. `bag` cuenta cada palabra. El subíndice `<the>` devuelve cuántas veces vio el bag la palabra `the`. La respuesta es dos.

1. El método `total` suma todos los conteos. Esta suma es el número de palabras del bag: `6`.

{% include nav.html %}
