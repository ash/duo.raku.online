---
title: 'Risinājums: Nedēļas diena'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `day-of-week` dod dienām numurus no `1` līdz `7`. Pirmdiena ir `1`, un svētdiena ir `7`. Tāpēc divas nedēļas nogales dienas ir `6` un `7`.

1. Pārbaude `>= 6` ir `True` sestdienai un svētdienai. Citām dienām tā ir `False`. 2027. gada 14. februāris ir svētdiena. Tās numurs ir `7`. Tāpēc programma izdrukā `True`.

{% include nav.html %}
