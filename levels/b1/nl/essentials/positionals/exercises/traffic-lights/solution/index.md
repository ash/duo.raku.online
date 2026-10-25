---
title: 'Solution: Verkeerslichten'
---

{% include menu.html %}

Het idee van de oplossing is om de indexering van een array ‘rond te laten lopen’. De array bevat de vier toestanden van de verkeerslichten:

```raku
my @lights = <yellow red yellow green>;
```

In het begin wordt het aantal seconden sinds de start direct als index gebruikt. Als het groter is dan 3, ga je terug naar het begin van de array. De modulo-operator `%` doet dit. De lengte van de array is `@lights.elems`. Maar met `%` hoef je de `elems`-methode niet aan te roepen. De array is een operand van `%`, dus wordt zijn naam omgezet naar een getal. Deze omzetting is zo gemaakt dat ze het aantal elementen geeft.

## Code

Hier is de oplossing:

```raku
my @lights = <yellow red yellow green>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Vind het programma in het bestand [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Uitvoer

Voer het programma uit. Probeer ook andere waarden in het programma.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
