---
title: 'Risinājums: Natīvā noklusējuma vērtība'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Natīvais `num` nevar būt nedefinēts. Tāpēc, tāpat kā natīvais `int`, tas sākas ar `0`, nevis ar `(Num)`.

1. Natīvais `str` sākas kā tukša virkne. Tāpēc izvadē starp iekavām nav nekā. Neviens no natīvajiem tipiem nekad nesatur nedefinētu vērtību.

1. Tipu nosaukumi šeit ir ļoti svarīgi. Ja jūs tos noņemat un uzrakstāt `my $n; my $s;`, mainīgie kļūst par parastiem konteineriem. Tie sākas kā *nedefinēti* (`Any`). Tad `say $n` izdrukā `(Any)`. Nedefinētā `$s` interpolēšana arī dod brīdinājumu: *"Use of uninitialized value … in string context"*. Tikai natīvie tipi `num` un `str` dod noklusējuma vērtības `0` un tukšo virkni.

{% include nav.html %}
