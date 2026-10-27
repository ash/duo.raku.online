---
title: 'Risinājums: Mēģinājums vai noklusētā vērtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Neizdevies `try` bloks dod nedefinētu vērtību.

1. Tāpēc defined-or operators `//` atgriež savu labo pusi, `'default'`. Tas ir tīrs veids, kā vienā rindā atgūties ar rezerves vērtību.

{% include nav.html %}
