---
title: 'Solution: Een statistiekmodule gebruiken'
translations_gpt: De oplossing van 'Gebruik een statistiekmodule'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

Het programma, `stats.raku`:

```raku
use Stats;

my @scores = 10, 20, 30, 40;

say "total: { total(@scores) }";
say "mean: { mean(@scores) }";
```

🦋 Je kunt beide bronbestanden vinden in de map [exercises/advanced/modules-basics/stats-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/stats-module).

## Uitvoer

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Opmerkingen

1. Eén `use Stats` haalt *beide* geëxporteerde subroutines tegelijk binnen. `use` importeert alles met `is export` in de module. Het importeert niet maar één naam.

1. `mean` roept `total` aan in de module. Voor het gemiddelde roept het programma `total` niet zelf aan. Maar het werkt toch. De subroutines van een module kunnen elkaar gebruiken. De aanroeper ziet alleen de geëxporteerde namen.

1. De vier getallen zijn samen `100`. Het gemiddelde is dus `100 / 4`. Dat is `25`.

{% include nav.html %}
