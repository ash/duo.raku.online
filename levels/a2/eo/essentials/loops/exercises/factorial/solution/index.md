---
title: 'Solvo: Faktorialo'
---

{% include menu.html %}

Por ricevi la faktorialon de `N`, multipliku ĉiujn nombrojn de 1 ĝis `N`. Ekzemple, la faktorialo de 4 estas 1 * 2 * 3 * 4 = 24.

## Kodo

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Trovu la programon en la dosiero [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Eligo

Rulu la programon kelkajn fojojn. Provu malsamajn valorojn de `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Komentoj

La programo uzas la operatoron `*=`. Ĝi multiplikas kaj konservas la rezulton en la variablo. Do `$x *= $y` estas la sama kiel `$x = $x * $y`.

Vi ankaŭ povas skribi ‘plenan’ buklon, kun `for` antaŭ la bloko:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Pli pri tio

Ĉi tiu tasko revenas plurajn fojojn en la kurso. En ĉi tiu parto, ni ankaŭ solvas ĝin alimaniere. Ni uzas funkcion, kiu vokas sin mem.

En la dua parto, vi lernos pri reduktaj operatoroj. Kun ili, la solvo estas tre facila. Vi ankaŭ lernos fari vian propran operatoron, `!`. Tiam vi povas skribi `$n!` por faktorialo. Poste, vi vidos ankoraŭ unu belan solvon per `where`.

{% include nav.html %}
