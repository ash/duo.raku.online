---
title: 'Solutio: Modulum statisticum utere'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

Programma, `stats.raku`:

```raku
use Stats;

my @scores = 10, 20, 30, 40;

say "total: { total(@scores) }";
say "mean: { mean(@scores) }";
```

🦋 Utrumque archivum fontem in directoria [exercises/advanced/modules-basics/stats-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/stats-module) invenies.

## Exitus

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Commentarii

1. Unum `use Stats` *utrumque* subprogramma exportatum simul adducit. `use` omnia importat quae modulus `is export` notat, non unum solum nomen.

1. `mean` intra modulum `total` vocat. Ut medium accipiat, programma ipsum `total` non vocat, sed tamen operatur. Subprogrammata moduli inter se niti possunt. Vocans sola nomina exportata videt.

1. Quattuor numeri `100` efficiunt, itaque medium est `100 / 4`, id est `25`.

{% include nav.html %}
