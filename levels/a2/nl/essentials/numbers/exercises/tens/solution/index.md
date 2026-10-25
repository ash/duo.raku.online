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

Voer het programma uit. Test het met een paar verschillende gevallen:

* Een rond getal met drie cijfers, bijvoorbeeld 120;
* Een getal dat je zonder rest door 100 kunt delen, bijvoorbeeld 400;
* Een getal groter dan 10 maar kleiner dan 100;
* Een getal kleiner dan 10.

Voor het getal 234 drukt het programma dit af:

```console
$ raku exercises/numbers/tens.raku
Voer een positief geheel getal in: 234
3
```

## Opmerkingen

Deze oplossing gebruikt weer twee operatoren samen: modulo `%` en gehele deling `div`.

Kijk naar de spatie voor het openingshaakje. Die moet er staan. Zonder spatie krijg je een syntaxisfout. We komen terug op [deze eigenschap](/nl/essentials/more-on-functions/mind-the-space) van Raku in de sectie over functies. Typ de code voor nu zoals je hem hierboven ziet. Of voeg nog een paar haakjes toe. Zet ze rond het argument van de functie. Dan heb je geen spatie nodig:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
