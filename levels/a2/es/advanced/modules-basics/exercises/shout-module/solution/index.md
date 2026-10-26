---
title: 'Solution: Un módulo de gritar'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea. Usa dos archivos.

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

1. El trait `is export` está en `shout`. Así que todos los programas que usan el módulo pueden verla.

1. El método `.uc` devuelve la cadena en letras mayúsculas.

{% include nav.html %}
