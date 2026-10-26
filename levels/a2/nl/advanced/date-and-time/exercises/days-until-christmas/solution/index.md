---
title: 'Solution: Weken tot Kerstmis'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $days = Date.new(2026, 12, 25) - Date.new(2026, 6, 27);
say "{$days div 7} weeks and {$days % 7} days";
```

🦋 Je kunt de broncode vinden in het bestand [days-until-christmas.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/days-until-christmas.raku).

## Uitvoer

```
25 weeks and 6 days
```

## Opmerkingen

1. Je kunt de ene `Date` van de andere aftrekken. Het resultaat is het aantal dagen ertussen. Hier is dat `181`. Je telt de dagen van elke maand dus niet zelf. De latere datum staat eerst. Daarom is het resultaat positief.

1. De operator `div` deelt gehele getallen. Die geeft het aantal hele weken: `181 div 7` is `25`. De modulo-operator `%` geeft wat er na de deling overblijft. Dat zijn de extra dagen: `181 % 7` is `6`.

{% include nav.html %}
