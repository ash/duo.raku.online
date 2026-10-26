---
title: 'Solutio: Parametrum scribibile'
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `is rw` parametrum `$n` cum variabili `$score` vocantis coniungit. Ergo `$n *= 2` intra `double` ipsum `$score` mutat. Ideo programma `42` imprimit.

1. Sine `is rw` parametrum tantum-lectu est. Tum `$n *= 2` errorem dat. Cum `is copy`, `double` copiam suam valoris accipit. Hanc copiam mutare potest. Sed `$score` manet `21`.

{% include nav.html %}
