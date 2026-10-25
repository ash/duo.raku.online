---
title: 'Solution: Imprimir una serie de números'
---

{% include menu.html %}

Hay más de una forma de resolver este problema.

## Código 1

La primera solución es más corta y más típica de Raku.

```raku
my $begin = prompt 'Inicio: ';
my $end = prompt 'Fin: ';

.say for $begin .. $end;
```

🦋 Encuentra el programa en el archivo [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Código 2

Una segunda solución posible usa la declaración `loop`.

```raku
my $begin = prompt 'Inicio: ';
my $end = prompt 'Fin: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Encuentra el programa en el archivo [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Como ves, la primera variante es mucho más corta y muestra la idea con más claridad.

## Discusión

La primera variante del programa usa la [forma postfija del bucle `for`](/es/essentials/loops/postfix-for). El segundo programa usa un `loop`.

## Salida

Ejecuta el programa e introduce los dos números en la consola. Las dos variantes dan la misma salida.

```console
$ raku exercises/positionals/series-of-numbers.raku
Inicio: 15
Fin: 19
15
16
17
18
19
```

{% include nav.html %}
