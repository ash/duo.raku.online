---
title: 'Solutio: Divisio per subtractionem'
---

{% include menu.html %}

Divisio est subtractio repetita. Programma circulum `while` habet, qui `$b` ab `$a` subtrahit et hoc repetit dum valor praesens `$a` non minor est quam `$b`. Variabilis `$n` iterationes numerat, et est etiam resultatum quod nobis opus est.

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

Curre programma aliquoties. Incipe a valoribus datis, qui divisionem exactam dant:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Deinde tenta, exempli gratia, `$b` in `20` mutare, et confirma resultatum rectum esse:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
