---
title: 'Solutio: Quadrata'
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my @squares = gather for 1..6 {
    take $_ ** 2 if $_ %% 2;
};

say @squares;
```

🦋 Inveni codicem fontem in archivo [squares.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/squares.raku).

## Exitus

```
[4 16 36]
```

## Commentarii

1. Probatio `if $_ %% 2` decernit *num* valor capiatur, et `$_ ** 2` decernit *quid* capiatur. Soli numeri pares `2`, `4`, `6` hanc probationem transeunt.

1. Quadrata eorum `4`, `16`, `36` soli valores sunt qui ad `take` dantur. Itaque `gather` exacte illos colligit. Hic unum `take` valores simul filtrat et mutat. Simplex `map` hoc tam clare dicere non potest.

{% include nav.html %}
