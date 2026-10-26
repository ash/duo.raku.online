---
title: 'Solution: Descuento predeterminado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Encuentra el programa en el archivo [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Claro, hay una solución más simple. Da a la variable el valor `0` cuando la creas:

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

1. El trait `is default(0)` da al contenedor un valor de reserva. El contenedor lo usa hasta que asignes algo. Si lees la variable, obtienes `0`. Sin un valor por defecto declarado, obtienes una advertencia de _valor no inicializado_. Aquí no hay esa advertencia.

1. Después de la asignación, el contenedor guarda `15`. El valor por defecto ya no importa.

{% include nav.html %}
