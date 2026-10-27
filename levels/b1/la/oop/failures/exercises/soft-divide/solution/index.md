---
title: 'Solutio: Reciprocum molle'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Inveni codicem fontem in archivo [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Exitus

```
0.25
undefined
```

## Commentarii

1. `reciprocal(4)` more solito operatur et `1 / 4` reddit, id est `0.25`.

1. `reciprocal(0)` vocat `fail`, itaque `Failure` reddit, quod indefinitum est. Operator `//` partem suam dexteram reddit quotiens pars sinistra indefinita est. Itaque valorem subsidiarium `undefined` accipimus.

1. `//` adhibere pro tractatione defectus valet. Probat utrum valor definitus sit, sed valore non utitur. Itaque `Failure` mollis manet et numquam ut vera exceptio iacitur.

{% include nav.html %}
