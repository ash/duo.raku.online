---
title: 'Solvo: Faktorialo'
---

{% include menu.html %}

La faktorialo de `N` estas la produkto de ĉiuj tutaj nombroj de 1 ĝis `N`. Ekzemple, la faktorialo de 4 estas 1 * 2 * 3 * 4 = 24.

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

Ĉi tiu programo uzas la operatoron `*=`, kiu multiplikas kaj asignas per unu paŝo: `$x *= $y` signifas la samon kiel `$x = $x * $y`.

Anstataŭ la postfiksa formo, vi ankaŭ povas uzi ‘plenan’ buklon:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Pli pri ĉi tiu temo

Ni revenos al ĉi tiu tasko plurajn fojojn. Poste en ĉi tiu parto de la kurso, ni ankaŭ solvos ĝin per rekursio.

En la dua parto de la kurso, ni lernos pri reduktaj operatoroj. Ili faras la solvon tre simpla. Ni ankaŭ kreos nian propran operatoron `!`, por ke `$n!` donu faktorialon. Fine, estas alia interesa solvo, kiam ni parolas pri la `where` klaŭzo.

{% include nav.html %}
