---
title: 'Solution: Un módulo de gritar'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución. Usa dos archivos.

## Código

El módulo, `Shouter.rakumod`:

```raku
unit module Shouter;

sub shout($s) is export {
    $s.uc
}
```

El programa, `shout.raku`:

```raku
use Shouter;

say shout('hi');
```

🦋 Puedes encontrar ambos archivos fuente en el directorio [exercises/advanced/modules-basics/shout-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/shout-module).

## Salida

```console
$ raku -I. shout.raku
HI
```

## Comentarios

1. Gracias al trait `is export`, cualquier programa que use el módulo puede ver `shout`.

1. El método `.uc` devuelve la cadena en mayúsculas.

{% include nav.html %}
