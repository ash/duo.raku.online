---
title: 'Risinājums: Saskaitīt unikālos'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Iedodiet masīvu `set`. Jūs iegūstat kopu ar tā vērtībām. Kopa patur tikai atšķirīgas vērtības. Tāpēc katrs atkārtotais skaitlis kļūst par vienu vērtību.

1. Pēc tam metode `elems` atgriež atšķirīgo vērtību skaitu. Tas ir `7`.

{% include nav.html %}
