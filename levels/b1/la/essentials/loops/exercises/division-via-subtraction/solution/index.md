---
title: 'Solutio: Divisio per subtractionem'
---

{% include menu.html %}

Divisio est tantum subtractio multoties facta. Programma circulum `while` habet, qui `$b` ab `$a` subtrahit. Hoc repetit dum `$a` adhuc non minor est quam `$b`. Variabilis `$n` gyros circuli numerat. Hic numerus etiam est resultatum.

## Codex

Hic est programma plenum:

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

Deinde alios valores tenta. Exempli gratia, da `$b` valorem `20` et inspice an resultatum rectum sit:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
