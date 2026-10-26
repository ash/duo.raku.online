---
title: 'Solution: Dag van de week'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. `day-of-week` geeft de dagen nummers van `1` tot `7`. Maandag is `1` en zondag is `7`. De twee dagen van het weekend zijn dus `6` en `7`.

1. De test `>= 6` is `True` voor zaterdag en voor zondag. Voor de andere dagen is hij `False`. 14 februari 2027 is een zondag. Het nummer is `7`. Het programma print dus `True`.

{% include nav.html %}
