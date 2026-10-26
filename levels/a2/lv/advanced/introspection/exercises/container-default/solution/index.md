---
title: 'Risinājums: Konteinera noklusējuma vērtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Avota kodu var atrast failā [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Izvade

```
0
0
```

## Komentāri

1. Iezīme `is default(0)` dod konteineram noklusējuma vērtību. Programma neko nepiešķir mainīgajam `$count`. Tāpēc `$count` atgriež noklusējuma vērtību. Pirmā rinda izdrukā `0`.

1. `.VAR.default` prasa konteineram tā noklusējuma vērtību. Arī tā ir `0`. Bez iezīmes noklusējuma vērtība ir cita. Konteineram bez tipa tad noklusējuma vērtība ir `(Any)`.

{% include nav.html %}
