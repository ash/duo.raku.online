---
title: 'Risinājums: Domēna daļa'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $email = 'user@example.com';

my $at = $email.index('@');
say $email.substr($at + 1);
```

🦋 Programmas pirmkodu var atrast failā [find-domain.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/find-domain.raku).

## Izvade

```
example.com
```

## Komentāri

1. `index('@')` atgriež `4`, kas ir `@` zīmes pozīcija, skaitot no nulles.

1. `substr($at + 1)` sākas vienu rakstzīmi aiz `@`. Tā kā garums nav norādīts, tas turpinās līdz virknes beigām. Rezultāts ir `example.com`.

{% include nav.html %}
