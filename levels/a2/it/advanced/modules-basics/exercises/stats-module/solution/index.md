---
title: 'Solution: Usare un modulo di statistiche'
translations_gpt: La soluzione di 'Usare un modulo di statistiche'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

Il programma, `stats.raku`:

```raku
use Stats;

my @scores = 10, 20, 30, 40;

say "total: { total(@scores) }";
say "mean: { mean(@scores) }";
```

🦋 Puoi trovare entrambi i file sorgente nella directory [exercises/advanced/modules-basics/stats-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/stats-module).

## Output

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Commenti

1. Un solo `use Stats` porta *entrambe* le subroutine esportate in una volta. `use` importa tutto ciò che ha `is export` nel modulo. Non importa solo un nome.

1. `mean` chiama `total` dentro il modulo. Per avere la media, il programma stesso non chiama `total`. Ma funziona lo stesso. Le subroutine di un modulo possono usarsi a vicenda. Il chiamante vede solo i nomi esportati.

1. I quattro numeri insieme fanno `100`. Quindi la media è `100 / 4`. Fa `25`.

{% include nav.html %}
