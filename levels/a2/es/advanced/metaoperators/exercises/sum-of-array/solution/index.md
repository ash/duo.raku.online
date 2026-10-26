---
title: 'Solution: Promedio de un array'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El meta-operador de reducción `[+]` pone `+` entre todos los elementos de `@data`. Así, `[+] @data` es lo mismo que `10 + 20 + 30 + 40`. Esto da `100`. El código necesita los paréntesis. Con ellos, la reducción ocurre antes de la división.

1. `@data.elems` es el número de elementos. La suma dividida entre este número da el promedio, `25`. A veces la división no es exacta. Entonces Raku no redondea el resultado. Da una fracción exacta, un `Rat`.

{% include nav.html %}
