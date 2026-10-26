---
title: 'Solution: Un módulo de matemáticas'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución. Usa dos archivos.

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

1. El módulo marca `square` con `is export`. Eso es lo que la hace disponible para el programa que usa el módulo.

1. La opción `-I.` añade el directorio actual a la ruta de búsqueda de módulos. De esta forma, Raku encuentra `Maths.rakumod` junto al programa.

{% include nav.html %}
