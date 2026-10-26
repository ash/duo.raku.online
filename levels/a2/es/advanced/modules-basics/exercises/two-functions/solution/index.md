---
title: 'Solution: Dos funciones en un módulo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea. Usa dos archivos.

## Código

El módulo, `Calc.rakumod`:

```raku
unit module Calc;

sub add($a, $b) is export {
    $a + $b
}

sub mul($a, $b) is export {
    $a * $b
}
```

El programa, `calc.raku`:

```raku
use Calc;

say add(3, 4);
say mul(3, 4);
```

🦋 Puedes encontrar ambos archivos fuente en el directorio [exercises/advanced/modules-basics/two-functions](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/two-functions).

## Salida

```console
$ raku -I. calc.raku
7
12
```

## Comentarios

1. Un módulo puede exportar muchas subrutinas, tantas como quieras. Cada una tiene su propio trait `is export`.

1. El programa solo necesita un `use Calc`. Después, tanto `add` como `mul` están disponibles.

{% include nav.html %}
