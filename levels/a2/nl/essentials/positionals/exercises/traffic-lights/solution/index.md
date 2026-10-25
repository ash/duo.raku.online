---
title: 'Solution: Verkeerslichten'
---

{% include menu.html %}

Dit is het idee van de oplossing. Een array bevat de vier toestanden van de verkeerslichten. We laten de indexering van deze array ‘rondlopen’:

```raku
my @lights = <yellow red yellow green>;
```

Tel eerst de seconden vanaf de start. Gebruik dit getal direct als index in de array. Later wordt het getal groter dan 3. Dan ga je terug naar het begin van de array. De modulo-operator `%` doet dit. De lengte van de array is `@lights.elems`. Maar hier hoef je de `elems`-methode niet aan te roepen. De array is een operand van `%`. Dus zet Raku de naam van de array om naar een getal. Deze omzetting geeft het aantal elementen.

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

Voer het programma uit. Probeer daarna ook andere waarden in het programma.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
