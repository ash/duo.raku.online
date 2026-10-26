---
title: 'Solution: Een statistiekmodule gebruiken'
translations_gpt: De oplossing van 'Gebruik een statistiekmodule'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Eén enkele `use Stats` haalt *beide* geëxporteerde subroutines tegelijk binnen. `use` importeert alles wat de module markeert met `is export`, niet maar één naam.

1. `mean` roept `total` aan binnen de module. Voor het gemiddelde roept het programma `total` niet zelf aan, maar het werkt toch. De subroutines van een module kunnen van elkaar afhangen. De aanroeper ziet alleen de geëxporteerde namen.

1. De vier getallen zijn samen `100`, dus het gemiddelde is `100 / 4`, en dat is `25`.

{% include nav.html %}
