---
title: 'Solution: Faculteit met multi-functies'
---

{% include menu.html %}

Deze oefening gaat weer over faculteiten. Met deze taak kunnen we namelijk meer mogelijkheden van Raku laten zien.

Je kunt een faculteit berekenen door bij het gegeven getal te beginnen en omlaag te gaan. In dat geval moet je stoppen als het getal 1 wordt. Met multi-functies kan dat. Zet het geval `$n == 1` in een aparte multi-functie.

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

Let op dat het programma het invoerargument omzet naar een integer: `@*ARGS[0].Int`. Dit voorkomt een oneindige lus als het invoergetal `1` is. Zonder de omzetting krijgt de functie `factorial` een waarde van het type [`IntStr`](/nl/essentials/typed-variables/allomorphs). De eerste variant van de multi-functie kan zo'n aanroep niet opvangen. Maar in de recursieve aanroep `factorial(2 - 1)` is het argument een integer. Dus kan Raku de eerste variant aanroepen.

{% include nav.html %}
