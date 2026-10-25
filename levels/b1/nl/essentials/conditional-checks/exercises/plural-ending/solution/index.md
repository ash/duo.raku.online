---
title: 'Solution: Meervoudige uitgang'
---

{% include menu.html %}

Het programma moet controleren of het getal groter is dan één. Als dat zo is, moet het woord in de meervoudsvorm staan.

## Code

```raku
my $n = prompt 'Hoeveel bestanden moeten worden gekopieerd? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n bestand{$ending} gekopieerd.";
```

🦋 Vind het programma in het bestand [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Uitvoer

Voer het programma twee of meer keer uit. Probeer de invoer `1` en ook een ander positief geheel getal:

```console
$ raku exercises/conditional-checks/plural-ending.raku
Hoeveel bestanden moeten worden gekopieerd? 10
10 bestanden gekopieerd.

$ raku exercises/conditional-checks/plural-ending.raku
Hoeveel bestanden moeten worden gekopieerd? 1
1 bestand gekopieerd.
```

## Opmerking

Je typt misschien vaak per ongeluk een enkele `?` in plaats van de dubbele `??`. Je typt misschien ook een dubbele punt `:` in plaats van `!!`, of je maakt beide fouten.

{% include nav.html %}
