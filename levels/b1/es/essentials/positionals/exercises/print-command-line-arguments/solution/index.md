---
title: 'Solution: Imprimir argumentos de línea de comandos'
---

{% include menu.html %}

El programa recibe los argumentos de la línea de comandos en el array `@*ARGS`. Así que tenemos que recorrer los elementos de este array.

## Código

```raku
.say for @*ARGS;
```

🦋 Encuentra el programa en el archivo [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Salida

Ejecuta el programa y comprueba que imprime cada argumento en su propia línea:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
