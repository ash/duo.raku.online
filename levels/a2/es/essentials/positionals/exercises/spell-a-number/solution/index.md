---
title: 'Solution: Escribir un número'
---

{% include menu.html %}

El programa de abajo tiene su propio array con nombres de números. Están los nombres del 0 al 20. También están los nombres de las decenas: 20, 30 y así sucesivamente. Luego hay una cadena de comprobaciones condicionales. Eligen una regla de deletreo para el número.

## Código

```raku
my $n = @*ARGS[0];

my @names = <
    zero one two three four five six seven eight nine ten
    eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty
    thirty fourty fifty sixty seventy eighty ninety >;

if $n < 20 {
    say @names[$n];
}
elsif $n % 10 { # Números de dos dígitos no redondos, por ejemplo, 34
    say @names[$n / 10 + 18] ~ '-' ~ @names[$n % 10];
}
else { # Múltiplos de 10, por ejemplo, 50
    say @names[$n / 10 + 18];
}
```

🦋 Encuentra el programa en el archivo [spell-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/spell-a-number.raku).

## Ejemplo

Ejecuta el programa varias veces. Comprueba las tres ramas de `if`—`elsif`—`else`.

```console
$ raku exercises/positionals/spell-a-number.raku 5
five

$ raku exercises/positionals/spell-a-number.raku 12
twelve

$ raku exercises/positionals/spell-a-number.raku 67
sixty-seven

$ raku exercises/positionals/spell-a-number.raku 80
eighty
```

{% include nav.html %}
