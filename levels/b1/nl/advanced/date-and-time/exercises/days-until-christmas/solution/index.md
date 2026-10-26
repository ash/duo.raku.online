---
title: 'Solution: Weken tot Kerstmis'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Als je de ene `Date` van de andere aftrekt, krijg je het aantal dagen ertussen. Hier is dat `181`. Je hoeft de dagen in elke maand dus niet zelf te tellen. De latere datum staat eerst, dus het resultaat is positief.

1. Gehele deling met `div` geeft het aantal hele weken: `181 div 7` is `25`. De modulo-operator `%` geeft de dagen die overblijven: `181 % 7` is `6`.

{% include nav.html %}
