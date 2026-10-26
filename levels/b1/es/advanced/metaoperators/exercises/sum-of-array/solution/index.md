---
title: 'Solution: Promedio de un array'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my @data = 10, 20, 30, 40;

say ([+] @data) / @data.elems;
```

🦋 Puedes encontrar el código fuente en el archivo [sum-of-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/sum-of-array.raku).

## Salida

```
25
```

## Comentarios

1. El meta-operador de reducción `[+]` pone el operador `+` entre todos los elementos de `@data`. Así, `[+] @data` es lo mismo que `10 + 20 + 30 + 40`, es decir, `100`. Los paréntesis hacen que la reducción ocurra antes de la división.

1. `@data.elems` da el número de elementos. Al dividir la suma entre este número, se obtiene el promedio, `25`. Si la división no fuera exacta, Raku no redondearía el resultado. En su lugar, daría un `Rat` exacto.

{% include nav.html %}
