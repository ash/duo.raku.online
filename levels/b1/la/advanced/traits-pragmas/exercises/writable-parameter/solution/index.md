---
title: 'Solutio: Parametrum scribibile'
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 Inveni codicem fontem in archivo [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Exitus

```
42
```

## Commentarii

1. `is rw` parametrum `$n` variabili vocantis `$score` ligat. Ergo `$n *= 2` intra `double` ipsum `$score` mutat, et ideo programma `42` imprimit.

1. Sine `is rw` parametrum tantum-lectu esset, et `$n *= 2` errorem faceret. Cum `is copy` potius, `double` copiam privatam ad mutandum acciperet. Tum `$score` intactum ad `21` maneret.

{% include nav.html %}
