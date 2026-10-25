---
title: 'Solution: Faculteit met multi-functies'
---

{% include menu.html %}

Deze oefening gaat weer over faculteiten. Met deze taak kunnen we meer mogelijkheden van Raku laten zien.

Om een faculteit te berekenen, kunnen we bij het gegeven getal beginnen. Dan gaan we omlaag. We moeten stoppen als het getal 1 is. Multi-functies kunnen dat doen. Zet het geval `$n == 1` in een eigen multi-functie.

## Code

Hier is de oplossing:

```raku
multi sub factorial(1)  { 1 }
multi sub factorial($n) { $n * factorial($n - 1) }

say factorial(@*ARGS[0].Int);
```

🦋 Vind het programma in het bestand [factorial-with-multi-functions.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/more-on-functions/factorial-with-multi-functions.raku).

## Uitvoer

```console
$ raku exercises/more-on-functions/factorial-with-multi-functions.raku 5
120
```

## Opmerking

Let op: het programma maakt van het invoerargument een integer. Dat doet het met `@*ARGS[0].Int`. Zonder dat geeft de invoer `1` een oneindige lus. Dit is de reden. De functie `factorial` krijgt dan een waarde van het type [`IntStr`](/nl/essentials/typed-variables/allomorphs). Dus kan Raku de eerste variant van de multi-functie niet gebruiken. De recursieve aanroep `factorial(2 - 1)` is anders. Daar is het argument een integer. Dus kan Raku de eerste variant aanroepen.

{% include nav.html %}
