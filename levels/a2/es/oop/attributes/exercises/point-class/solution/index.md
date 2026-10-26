---
title: 'Solución: Una clase punto'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Las líneas `has $.x` y `has $.y` crean los atributos. También crean accesores para leerlos.

1. Cada objeto guarda sus propios `x` e `y`. `$a` y `$b` son el mismo tipo de objeto. Pero dan coordenadas distintas. Esta es la idea principal de los atributos. Cada instancia tiene sus propios datos.

{% include nav.html %}
