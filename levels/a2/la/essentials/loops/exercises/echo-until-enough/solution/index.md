---
title: 'Solutio: Echo usque satis'
---

{% include menu.html %}

Hoc programma ansam requirit. Ansa desinit cum usor verbum speciale inserit.

## Codex

Problema cum `while`, `until`, vel `repeat` solvere potes. Hi modi valde similes sunt. Hic est unus ex eis.

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

Curre programma. Insere pauca verba diversa. Deinde ansam siste.

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

Nota: variabilem `$verbum` _ante_ ansam creas. Probatio `while` non est intra corpus ansae. Itaque probatio variabilem intra ansam videre non potest.

{% include nav.html %}
