---
title: 'Solution: Som van getallen'
---

{% include menu.html %}

Hier is de oplossing voor het probleem.

## Code

```raku
my $a = prompt 'Voer getal A in: ';
my $b = prompt 'Voer getal B in: ';
my $c = prompt 'Voer getal C in: ';

my $som = $a + $b + $c;

say "De som van de getallen is $som.";
```

🦋 Je kunt de volledige code vinden in het bestand [sum-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum-of-numbers.raku).

## Uitvoer

Voer het programma een paar keer uit. Controleer of het werkt met verschillende soorten getallen.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Voer getal A in: 1.2
Voer getal B in: -3.4
Voer getal C in: 45
De som van de getallen is 42.8.
```

## Opmerkingen

Merk op dat we de waarde die de `prompt` routine teruggeeft direct gebruiken. Dat kan problemen geven als de gebruiker een string invoert die geen getal is. We kunnen het programma later verbeteren, als we over uitzonderingen hebben geleerd.

{% include nav.html %}
