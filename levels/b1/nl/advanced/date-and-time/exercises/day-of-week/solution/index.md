---
title: 'Solution: Dag van de week'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $date = Date.new(2027, 2, 14);
say $date.day-of-week >= 6;
```

🦋 Je kunt de broncode vinden in het bestand [day-of-week.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/day-of-week.raku).

## Uitvoer

```
True
```

## Opmerkingen

1. `day-of-week` geeft maandag het nummer `1` en zondag het nummer `7`. De twee dagen van het weekend zijn dus precies `6` en `7`.

1. De test `>= 6` geeft `True` op zaterdag en zondag. Op elke andere dag geeft hij `False`. 14 februari 2027 is een zondag (`7`), dus het programma print `True`.

{% include nav.html %}
