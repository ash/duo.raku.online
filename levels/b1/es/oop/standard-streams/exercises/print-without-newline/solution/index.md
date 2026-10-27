---
title: 'Solución: Imprimir sin salto de línea'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
$*OUT.print('a');
$*OUT.print('b');
$*OUT.say('c');
```

🦋 Puedes encontrar el código fuente en el archivo [print-without-newline.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/print-without-newline.raku).

## Salida

```
abc
```

## Comentarios

1. `$*OUT.print` no añade un salto de línea después de su texto, así que `a` y `b` se quedan en una sola línea.

1. `$*OUT.say` escribe `c` y después un salto de línea, que cierra la línea `abc`.

{% include nav.html %}
