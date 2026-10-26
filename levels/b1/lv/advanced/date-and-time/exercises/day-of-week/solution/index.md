---
title: 'Risinājums: Nedēļas diena'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $date = Date.new(2027, 2, 14);
say $date.day-of-week >= 6;
```

🦋 Atrodiet programmu failā [day-of-week.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/day-of-week.raku).

## Izvade

```
True
```

## Komentāri

1. `day-of-week` dod pirmdienai numuru `1` un svētdienai numuru `7`. Tāpēc divas nedēļas nogales dienas ir tieši `6` un `7`.

1. Pārbaude `>= 6` dod `True` sestdienā un svētdienā. Jebkurā citā dienā tā dod `False`. 2027. gada 14. februāris ir svētdiena (`7`), tāpēc programma izdrukā `True`.

{% include nav.html %}
