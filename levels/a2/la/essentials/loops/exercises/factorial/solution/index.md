---
title: 'Solutio: Factorial'
---

{% include menu.html %}

Factorialis `N` est multiplicatio omnium numerorum integrorum ab 1 ad `N`. Exempli gratia, factorialis 4 est 1 * 2 * 3 * 4 = 24.

## Codex

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Inveni codicem fontem in archivo [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Exitus

Curre programma aliquoties cum valoribus diversis `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Commentarii

Hoc programma utitur operatore `*=`. Est modus brevis multiplicandi et assignandi: `$x *= $y` idem significat ac `$x = $x * $y`.

Potes etiam ‘plenum’ circulum adhibere pro forma postfixa:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Plura de hoc

Ad hoc problema aliquoties in cursu redimus. In hac parte cursus, id etiam recursione solvimus.

In secunda parte cursus, de operatoribus reductionis disces. Cum eis, solutio facillima est. Etiam disces tuum operatorem `!` facere. Deinde `$n!` scribere potes ut factorialem invenias. Postea, aliam solutionem iucundam cum clausula `where` videbimus.

{% include nav.html %}
