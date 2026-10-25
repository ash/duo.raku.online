---
title: 'Solución: El número de argumentos de línea de comandos'
translations_gpt:
---

{% include menu.html %}

Otra vez obtenemos el número de argumentos de `@*ARGS.elems`. Pero esta vez, no solo lo imprimimos. Necesitamos hacer más con él. Guarda el número en una variable. Luego elige la palabra correcta con un operador ternario:

## Código

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Puedes encontrar el código fuente en el archivo [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Salida

Prueba tres casos interesantes: ningún argumento, un argumento y muchos argumentos. Solo el segundo caso usa la forma singular, `argument`.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
