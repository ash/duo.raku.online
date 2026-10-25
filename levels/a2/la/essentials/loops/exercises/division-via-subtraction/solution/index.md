---
title: 'Solutio: Divisio per subtractionem'
---

{% include menu.html %}

Divisio est subtractio, iterum atque iterum. Programma circulum `while` habet. Singulis vicibus circulus `$b` ab `$a` aufert. Hoc facit dum `$a` non minor est quam `$b`. Variabilis `$n` gyros numerat. Hic numerus est responsum.

## Codex

Hic est totum programma:

```raku
my $a = 175;
my $b = 25;

my $n = 0;
while $a >= $b {
    $a -= $b;
    $n++;
}

say $n;
```

🦋 Inveni codicem fontem in archivo [division-via-subtraction.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/division-via-subtraction.raku).

## Exitus

Curre programma aliquoties. Incipe a numeris in codice. Post divisionem nihil restat:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Deinde alios numeros tenta. Exempli gratia, muta `$b` in `20`. Vide an resultatum rectum sit:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
