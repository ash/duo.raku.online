---
title: 'Solution: Aantal tienen'
---

{% include menu.html %}

Dit is hoe je de taak kunt oplossen.

## Code

```raku
my $n = prompt 'Voer een positief geheel getal in: ';

say ($n % 100) div 10;
```

🦋 Je kunt de volledige code vinden in het bestand [tens.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/tens.raku).

## Uitvoer

Voer het programma uit en test een paar verschillende gevallen:

* Een rond getal van drie cijfers, zoals 120;
* Een veelvoud van 100, bijvoorbeeld 400;
* Een getal groter dan 10 maar kleiner dan 100;
* Een getal kleiner dan 10.

Voor het getal 234 ziet de uitvoer van het programma er zo uit:

```console
$ raku exercises/numbers/tens.raku
Voer een positief geheel getal in: 234
3
```

## Opmerkingen

Deze oplossing combineert opnieuw modulo `%` en gehele deling `div`.

Let op de spatie voor het openingshaakje. Die moet er staan, anders krijg je een syntaxisfout. We komen terug op [deze eigenschap](/nl/essentials/more-on-functions/mind-the-space) van Raku in de sectie over functies. Typ de code voor nu zoals hierboven. Of je kunt nog een paar haakjes rond het argument van de functie zetten. In dat geval heb je geen spatie nodig:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
