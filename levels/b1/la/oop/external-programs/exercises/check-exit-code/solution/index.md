---
title: 'Solutio: Codicem exitus inspice'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 Inveni codicem fontem in archivo [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Exitus

```
4
failure
```

## Commentarii

1. `run` obiectum `Proc` reddit. Hic magni momenti est id in `$proc` servare et deinde legere. Si `Proc` imperati deficientis abicis, exceptionem iacit. Sed effectum inspicere pro tractatione habetur.

1. `.exitcode` est numerus quem imperatum reddidit: `4`. `Proc` ut valorem Booleanum probare ad quaestionem simpliciorem respondet: operatumne est? Id verum est solum cum codex exeundi `0` est. Hic falsum est, itaque programma `failure` imprimit.

{% include nav.html %}
