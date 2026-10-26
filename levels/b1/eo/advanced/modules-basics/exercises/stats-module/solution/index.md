---
title: 'Solvo: Uzi statistikan modulon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

La programo, `stats.raku`:

```raku
use Stats;

my @scores = 10, 20, 30, 40;

say "total: { total(@scores) }";
say "mean: { mean(@scores) }";
```

🦋 Vi povas trovi ambaŭ fontdosierojn en la dosierujo [exercises/advanced/modules-basics/stats-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/stats-module).

## Eligo

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Komentoj

1. Unu sola `use Stats` alportas *ambaŭ* eksportitajn subrutinojn samtempe. `use` importas ĉion, kion la modulo markas per `is export`, ne nur unu nomon.

1. `mean` vokas `total` ene de la modulo. Por ricevi la mezumon, la programo mem ne vokas `total`, sed ĝi tamen funkcias. La subrutinoj de modulo povas dependi unu de la alia. La vokanto vidas nur la eksportitajn nomojn.

1. La kvar nombroj sumiĝas al `100`, do la mezumo estas `100 / 4`, kio estas `25`.

{% include nav.html %}
