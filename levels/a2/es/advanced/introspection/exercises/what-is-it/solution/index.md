---
title: 'Solution: ¿Qué es?'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `$a.WHAT` no es la cadena `Int`. Es el objeto de tipo `Int` real. Así que `=== Int` lo compara con el tipo mismo. El resultado es `True`.

1. `$b` guarda una cadena. Así que su `WHAT` es `Str`. La comparación con `Int` da `False`. Por eso `WHAT` es útil en condiciones. No sirve solo para imprimir.

{% include nav.html %}
