---
title: 'Solution: Imprimir argumentos de línea de comandos'
---

{% include menu.html %}

El programa recibe los argumentos de la línea de comandos. Están en el array `@*ARGS`. Así que necesitamos un bucle sobre sus elementos.

## Código

```raku
.say for @*ARGS;
```

🦋 Encuentra el programa en el archivo [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Salida

Ejecuta el programa. Comprueba que imprime los argumentos, uno en cada línea:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
