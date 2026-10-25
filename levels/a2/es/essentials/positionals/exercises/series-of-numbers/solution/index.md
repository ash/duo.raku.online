---
title: 'Solution: Imprimir una serie de números'
---

{% include menu.html %}

Puedes resolver este problema de más de una forma.

## Código 1

La primera solución es más corta. También tiene más el estilo de Raku.

```raku
my $begin = prompt 'Inicio: ';
my $end = prompt 'Fin: ';

.say for $begin .. $end;
```

🦋 Encuentra el programa en el archivo [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Código 2

La segunda solución usa la declaración `loop`.

```raku
my $begin = prompt 'Inicio: ';
my $end = prompt 'Fin: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Encuentra el programa en el archivo [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Como ves, la primera variante es mucho más corta. También muestra la idea con más claridad.

## Discusión

La primera variante usa la [forma postfija del bucle `for`](/es/essentials/loops/postfix-for). En esta forma, `for` va después de la declaración. El segundo programa usa `loop`.

## Salida

Ejecuta el programa. Escribe los dos números en la consola. Las dos variantes imprimen el mismo resultado.

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
