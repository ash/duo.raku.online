---
title: 'Solución: Una clase punto'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class Point {
    has $.x;
    has $.y;
}

my $a = Point.new(x => 3, y => 4);
my $b = Point.new(x => 0, y => 0);

my $dist = sqrt(($a.x - $b.x) ** 2 + ($a.y - $b.y) ** 2);
say $dist;
```

🦋 Puedes encontrar el código fuente en el archivo [point-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/point-class.raku).

## Salida

```
5
```

## Comentarios

1. Las declaraciones `has $.x` y `has $.y` crean los atributos y también sus accesores de lectura.

1. Cada objeto guarda sus propios `x` e `y`. `$a` y `$b` son el mismo tipo de objeto, pero dan coordenadas distintas. Esta es la idea principal de los atributos: cada instancia lleva sus propios datos.

{% include nav.html %}
