---
title: 'Solvo: Faktorialo'
---

{% include menu.html %}

La faktorialo de `N` estas ĉiuj tutaj nombroj de 1 ĝis `N`, multiplikitaj kune. Ekzemple, la faktorialo de 4 estas 1 * 2 * 3 * 4 = 24.

## Kodo

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Trovu la programon en la dosiero [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Eligo

Rulu la programon kelkajn fojojn kun malsamaj valoroj de `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Komentoj

Ĉi tiu programo uzas la operatoron `*=`. Ĝi estas mallonga maniero por multipliki kaj asigni: `$x *= $y` signifas la samon kiel `$x = $x * $y`.

Vi ankaŭ povas uzi ‘plenan’ buklon anstataŭ la postfiksa formo:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Pli pri tio

Ni revenas al ĉi tiu tasko plurajn fojojn en la kurso. En ĉi tiu parto de la kurso, ni ankaŭ solvas ĝin per rekursio.

En la dua parto de la kurso, vi lernos pri reduktaj operatoroj. Kun ili, la solvo estas tre facila. Vi ankaŭ lernos fari vian propran operatoron `!`. Tiam vi povas skribi `$n!` por ricevi faktorialon. Poste ni vidos ankoraŭ unu interesan solvon kun la `where` klaŭzo.

{% include nav.html %}
