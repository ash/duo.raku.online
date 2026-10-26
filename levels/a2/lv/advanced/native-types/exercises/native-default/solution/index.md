---
title: 'Risinājums: Natīvā noklusējuma vērtība'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my num $n;
my str $s;

say $n;
say "[$s]";
```

🦋 Programmas pirmkodu var atrast failā [native-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-default.raku).

## Izvade

```
0
[]
```

## Komentāri

1. Natīvais `num` nevar būt nedefinēts. Tāpēc tas sākas ar `0`, tāpat kā natīvais `int`. Tas nesākas kā `(Num)`.

1. Natīvais `str` sākas kā tukša virkne. Tāpēc starp iekavām nav nekā. Natīvais tips nekad nesatur nedefinētu vērtību.

1. Šeit tipi ir ļoti svarīgi. Pamēģiniet tos noņemt. Tā vietā uzrakstiet `my $n; my $s;`. Tagad mainīgie ir parasti konteineri. Sākumā tie ir *nedefinēti*: tie satur `Any`. Tad `say $n` izdrukā `(Any)`. Virkne interpolē `$s`, bet `$s` ir nedefinēts. Tāpēc Raku parāda brīdinājumu: *"Use of uninitialized value … in string context"*. Tikai natīvie tipi `num` un `str` dod sākuma vērtības. Tās ir `0` un tukšā virkne.

{% include nav.html %}
