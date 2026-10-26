---
title: 'Risinājums: Saskaitīt unikālos'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 Atrodiet programmu failā [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Izvade

```
7
```

## Komentāri

1. Kad jūs padodat masīvu `set`, jūs iegūstat kopu ar tā vērtībām. Kopa patur tikai atšķirīgas vērtības, tāpēc atkārtotie skaitļi kļūst par vienu.

1. Pēc tam `elems` dod atšķirīgo vērtību skaitu: `7`.

{% include nav.html %}
