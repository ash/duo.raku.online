---
title: 'Solutio: Factorial'
---

{% include menu.html %}

Factorialis `N` est productum omnium numerorum integrorum ab 1 usque ad `N` inclusum. Exempli gratia, factorialis 4 est 1 * 2 * 3 * 4 = 24.

## Codex

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Inveni codicem fontem in archivo [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Exitus

Curre programmatum aliquoties et tenta valores diversos `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Commentarii

Hoc programma utitur operatore `*=`, forma brevi multiplicationis cum assignatione: `$x *= $y` idem est ac `$x = $x * $y`.

Potes etiam ‘plenum’ circulum adhibere pro forma postfixa:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Plus de hoc argumento

Ad hoc problema aliquoties redibimus. In hac parte cursus, id etiam recursive solvemus.

In secunda parte cursus, de sic dictis operatoribus reductionis discemus, qui solutionem simplicissimam faciunt. Videbimus etiam quomodo operatorem tuum `!` definias, ut `$n!` scribere possis ad factorialem computandum. Denique aliam solutionem iucundam videbimus, cum de clausula `where` loquemur.

{% include nav.html %}
