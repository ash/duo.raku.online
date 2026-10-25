---
title: 'Solutio: Factorial'
---

{% include menu.html %}

Factorialis `N` est productum omnium numerorum integrorum ab 1 ad `N`. Exempli gratia, factorialis 4 est 1 * 2 * 3 * 4 = 24.

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

Hoc programma operatore `*=` utitur, qui uno gradu multiplicat et assignat: `$x *= $y` idem significat ac `$x = $x * $y`.

Pro forma postfixa, potes etiam ‘plenum’ circulum adhibere:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Plus de hoc argumento

Ad hoc problema aliquoties redibimus. Postea in hac parte cursus, id etiam recursione solvemus.

In secunda parte cursus, de operatoribus reductionis discemus. Hi solutionem simplicissimam faciunt. Etiam operatorem nostrum `!` creabimus, ut `$n!` factorialem det. Denique alia solutio iucunda erit, cum de clausula `where` loquemur.

{% include nav.html %}
