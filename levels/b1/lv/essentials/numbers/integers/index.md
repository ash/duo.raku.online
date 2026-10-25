---
title: Veselie skaitļi
---

{% include menu.html %}

Datu tips `Int` ir paredzēts veseliem skaitļiem, tas ir, skaitļiem bez daļām. Tie var būt pozitīvi vai negatīvi. Ja vēlaties, varat pievienot zīmi `+`. Šeit ir daži acīmredzami piemēri:

```raku
42
-42
100
-5
0
```

Jā, pēc noklusējuma Raku uzskata vienkāršu `0` par veselu skaitli.

## Ciparu grupas

Raku valodā ir jauka iespēja, kas palīdz rakstīt lielus skaitļus. Jūs varat sadalīt ciparus tūkstošu grupās, lai tos būtu vieglāk lasīt:

```raku
1_000_000
-3_141_592
```

Jūs varat izveidot tādu skaitli kā `34_56`, bet labāk to nedarīt. Citiem cilvēkiem, kas lasa jūsu kodu, tas var šķist mulsinošs. Bet jūs nevarat likt divas pasvītras blakus. Tāpat skaitlis nevar sākties vai beigties ar pasvītru.

## Jebkura garuma veseli skaitļi

Raku valodai nav problēmu ar skaitļiem, kas pārsniedz 32 bitu vai 64 bitu robežas. Piemēram, šī programma ir pareiza. Tā sareizina divus lielus veselus skaitļus un izdrukā pareizo rezultātu.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
