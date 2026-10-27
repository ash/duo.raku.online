---
title: 'Solución: Capture la salida'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `:out` envía la salida al `Proc`. No va a la pantalla. `.out.slurp(:close)` la lee toda. `.trim` quita el salto de línea del final. `echo` añade este salto de línea.

1. Ahora la salida es una cadena normal en nuestro programa. Trabajamos con ella como con cualquier otro dato. `.words.elems` parte la cadena por los espacios. Después cuenta las piezas. El resultado es `3`. Por eso capturamos la salida. El programa externo se convierte en una parte de nuestro trabajo. Usamos su resultado en los pasos siguientes.

{% include nav.html %}
