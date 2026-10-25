---
title: '`put`'
---

{% include menu.html %}

La rutina `put` funciona como [`print`](../print). Pero por defecto, añade una nueva línea al final:

1. Convierte sus argumentos a una cadena. Para esto, llama al método `Str` en ellos.
1. Añade un carácter de nueva línea.
1. Envía la cadena al flujo `STDOUT`.

Algunos ejemplos:

```raku
42.put;
put 'Alpha', 'Beta';

my @array = 3, 4, 5;
put @array;

my %hash = a => 'b', c => 'd';
%hash.put;
```

Aquí está la salida del programa:

```console
$ raku t.raku
42
AlphaBeta
3 4 5
a	b
c	d
```

%%tipblock
## Una nueva línea de `put`

¿Qué caracteres añade `put` después de la salida? Los toma del método `nl-out` del flujo de salida. El valor predeterminado es `\n`.
%%/tipblock

{% include nav.html %}
