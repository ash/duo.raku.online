---
title: 'Solución: Un contador'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Puedes encontrar el código fuente en el archivo [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Salida

```
0
5
```

## Comentarios

1. El atributo se declara con `is rw`, así que su accesor devuelve un contenedor escribible. `= 0` le da un valor inicial. El primer `say` muestra que un contador nuevo de verdad empieza en este valor por defecto, `0`.

1. El accesor es escribible, así que `++` puede aumentarlo. Esto funciona como esperarías.

{% include nav.html %}
