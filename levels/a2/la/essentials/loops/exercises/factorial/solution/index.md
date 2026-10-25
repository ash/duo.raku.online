---
title: 'Solutio: Factorial'
---

{% include menu.html %}

Factorialem `N` sic invenis: omnes numeros ab 1 ad `N` multiplica. Exempli gratia, factorialis 4 est 1 * 2 * 3 * 4 = 24.

## Codex

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Inveni codicem fontem in archivo [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Exitus

Curre programma aliquoties. Tenta valores diversos `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Commentarii

Programma operatorem `*=` adhibet. Multiplicat et resultatum in variabili servat. Itaque `$x *= $y` idem est ac `$x = $x * $y`.

Potes etiam ‘plenum’ circulum scribere, cum `for` ante clausulam:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Plura de hoc

Hoc problema aliquoties in cursu redit. In hac parte, id etiam alio modo solvimus. Functionem adhibemus quae se ipsam vocat.

In secunda parte, de operatoribus reductionis disces. Cum eis, solutio facillima est. Etiam disces operatorem tuum `!` facere. Tum `$n!` pro factoriali scribere potes. Postea aliam solutionem pulchram cum `where` videbis.

{% include nav.html %}
