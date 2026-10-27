---
title: 'Risinājums: Mēģinājums vai noklusētā vērtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $r = try { die 'no' } // 'default';

say $r;
```

🦋 Atrodiet programmu failā [try-or-default.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-or-default.raku).

## Izvade

```
default
```

## Komentāri

1. `try` bloks neizdodas. Tāpēc tā vērtība ir nedefinēta.

1. Tāpēc defined-or operators `//` atgriež savu labo pusi. Tā ir `'default'`. Tas ir tīrs veids, kā turpināt pēc neveiksmes. Jums vajag tikai vienu rindu un rezerves vērtību.

{% include nav.html %}
