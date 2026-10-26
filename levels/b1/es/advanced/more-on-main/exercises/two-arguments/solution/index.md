---
title: 'Solution: Sumar dos argumentos'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

🦋 Puedes encontrar el código fuente en el archivo [two-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/two-arguments.raku).

## Salida

```console
$ raku two-arguments.raku 2 3
5
```

## Comentarios

1. Los dos parámetros posicionales reciben las dos palabras de la línea de comandos.

1. Los argumentos de la línea de comandos llegan como cadenas, pero el operador `+` los convierte en números. Así que `2` y `3` suman `5`.

{% include nav.html %}
