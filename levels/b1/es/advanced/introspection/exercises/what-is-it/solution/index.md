---
title: 'Solution: ¿Qué es?'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $a = 42;
my $b = 'x';

say $a.WHAT === Int;
say $b.WHAT === Int;
```

🦋 Encuentra el código fuente en el archivo [what-is-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/what-is-it.raku).

## Salida

```
True
False
```

## Comentarios

1. `$a.WHAT` no es la cadena `Int`, sino el objeto de tipo `Int` real. Así que `=== Int` lo compara con el tipo mismo y devuelve `True`.

1. `$b` guarda una cadena, así que su `WHAT` es `Str`. Cuando lo comparas con `Int`, obtienes `False`. Por eso `WHAT` es útil en condiciones, y no solo cuando imprimes algo.

{% include nav.html %}
