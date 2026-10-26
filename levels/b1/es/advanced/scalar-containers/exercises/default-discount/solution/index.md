---
title: 'Solution: Descuento predeterminado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución para la tarea.

## Código

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Encuentra el programa en el archivo [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Por supuesto, sería más simple dar a la variable el valor `0` desde el principio:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Salida

```
0
15
```

## Comentarios

1. El trait `is default(0)` da al contenedor un valor para usar hasta que se le asigne algo. Cuando lees la variable, obtienes `0`. A diferencia de un valor por defecto no declarado, no hay advertencia de _valor no inicializado_.

1. Después de la asignación, el contenedor tiene `15`, y el valor por defecto ya no es importante.

{% include nav.html %}
