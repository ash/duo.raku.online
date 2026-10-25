---
title: '`put`'
---

{% include menu.html %}

La rutina `put` hace el mismo trabajo que [`print`](../print). Pero por defecto, también añade una nueva línea al final:

1. Llama al método `Str` en sus argumentos para convertirlos a una cadena.
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

Esto es lo que imprime el programa:

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

`put` añade algunos caracteres después de la salida. Los caracteres exactos vienen del método `nl-out` del flujo de salida. Su valor predeterminado es `\n`.
%%/tipblock

{% include nav.html %}
