---
title: 'Solutio: Quadrata'
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Probatio `if $_ %% 2` decernit *num* codex valorem capiat. `$_ ** 2` decernit *quid* capiat. Soli numeri pares `2`, `4`, `6` probationem transeunt.

1. Quadrata eorum sunt `4`, `16`, `36`. Soli hi valores ad `take` eunt. Itaque `gather` exacte hos valores colligit. Hic unum `take` valores et eligit et mutat. Simplex `map` hoc tam clare dicere non potest.

{% include nav.html %}
