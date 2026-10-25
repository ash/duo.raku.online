---
title: 'Solution: Meervoudige uitgang'
---

{% include menu.html %}

Het programma moet het getal van de gebruiker controleren. Als het groter is dan één, moet het woord in het meervoud staan.

## Code

```raku
my $n = prompt 'Hoeveel bestanden moeten worden gekopieerd? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n bestand{$ending} gekopieerd.";
```

🦋 Vind het programma in het bestand [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Uitvoer

Voer het programma minstens twee keer uit. Test het met de invoer `1`. Probeer daarna een ander geheel getal groter dan nul:

```console
$ raku exercises/conditional-checks/plural-ending.raku
Hoeveel bestanden moeten worden gekopieerd? 10
10 bestanden gekopieerd.

$ raku exercises/conditional-checks/plural-ending.raku
Hoeveel bestanden moeten worden gekopieerd? 1
1 bestand gekopieerd.
```

## Opmerking

Hier maak je misschien vaak een fout. Je typt misschien een enkele `?` in plaats van de dubbele `??`. Of je typt een dubbele punt `:` in plaats van `!!`. Of je doet ze allebei.

{% include nav.html %}
