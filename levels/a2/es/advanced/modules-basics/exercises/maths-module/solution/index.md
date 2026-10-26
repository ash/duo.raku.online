---
title: 'Solution: Un módulo de matemáticas'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea. Usa dos archivos.

## Código

El módulo, `Maths.rakumod`:

```raku
unit module Maths;

sub square($n) is export {
    $n * $n
}
```

El programa, `maths.raku`:

```raku
use Maths;

say square(6);
```

🦋 Puedes encontrar ambos archivos fuente en el directorio [exercises/advanced/modules-basics/maths-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/maths-module).

## Salida

```console
$ raku -I. maths.raku
36
```

## Comentarios

1. El módulo marca `square` con `is export`. Así que un programa que usa el módulo puede llamar a `square`.

1. La opción `-I.` pone el directorio actual en la ruta de búsqueda de módulos. Así Raku encuentra `Maths.rakumod` junto al programa.

{% include nav.html %}
