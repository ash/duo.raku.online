---
title: 'Solutio: Echo usque satis'
---

{% include menu.html %}

Hoc programma ansam requirit quae desinit cum usor verbum certum inserit.

## Codex

Problema pluribus modis similibus solvere potes, cum `while`, `until` vel `repeat`. Hic est unus ex illis.

```raku
my $verbum;
repeat {
    $verbum = prompt 'Tuum verbum: ';
    say $verbum;
} while $verbum ne 'satis';

say 'OK, confectum.';
```

🦋 Inveni codicem fontem in archivo [echo-usque-satis.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/echo-until-enough.raku).

## Exitus

Curre programma, pauca verba diversa insere, et deinde ansam siste.

```console
$ raku exercises/loops/echo-usque-satis.raku
Tuum verbum: hoc
hoc
Tuum verbum: est
est
Tuum verbum: meum
meum
Tuum verbum: verbum
verbum
Tuum verbum: satis
satis
OK, confectum.
```

## Commentarium

Nota quod variabilem `$verbum` _ante_ ansam declaras. Causa est quod probatio `while` extra corpus ansae est. Si variabilem intra ansam declaras, probatio eam videre non potest.

{% include nav.html %}
