---
title: 'Solutio: Divisio per subtractionem'
---

{% include menu.html %}

Divisio est subtractio iterum atque iterum facta. Programma circulum `while` habet. Circulus `$b` ab `$a` aufert. Hoc repetit dum `$a` non minor est quam `$b`. Variabilis `$n` gyros circuli numerat. Hic numerus etiam est resultatum quod nobis opus est.

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

Curre programma aliquoties. Primum, utere valoribus datis. Divisionem exactam dant:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Deinde alios valores tenta. Exempli gratia, muta `$b` in `20` et inspice an resultatum rectum sit:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
