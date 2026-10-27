---
title: 'Solución: Capture la salida'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Puedes encontrar el código fuente en el archivo [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Salida

```
3
```

## Comentarios

1. `:out` envía la salida del programa al `Proc` en lugar de a la pantalla. `.out.slurp(:close)` la lee toda. `.trim` quita el salto de línea que `echo` añade al final.

1. Ahora la salida es una cadena normal en nuestro programa. La tratamos como cualquier otro dato. `.words.elems` la parte por los espacios y cuenta las piezas, lo que da `3`. Para eso sirve capturar la salida. El programa externo se convierte en una pieza de construcción, y seguimos procesando su resultado.

{% include nav.html %}
