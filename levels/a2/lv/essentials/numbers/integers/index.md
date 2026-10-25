---
title: Veselie skaitļi
---

{% include menu.html %}

Veseli skaitļi ir skaitļi bez daļām. Raku valodā veseliem skaitļiem ir datu tips `Int`. Vesels skaitlis var būt pozitīvs vai negatīvs. Ja vēlaties, pirms skaitļa varat rakstīt arī zīmi `+`. Šeit ir daži vienkārši piemēri:

```raku
42
-42
100
-5
0
```

Jā, arī vienkāršs `0` pēc noklusējuma ir vesels skaitlis.

## Ciparu grupas

Raku valodā ir jauka iespēja lieliem skaitļiem. Jūs varat sadalīt ciparus tūkstošu grupās. Tad skaitļus ir vieglāk lasīt:

```raku
1_000_000
-3_141_592
```

Jūs varat uzrakstīt arī tādu skaitli kā `34_56`. Labāk tā nedarīt. Tas var sajaukt citus cilvēkus, kas lasa jūsu kodu. Bet jūs nevarat likt divas pasvītras blakus. Un skaitlis nevar sākties vai beigties ar pasvītru.

## Jebkura garuma veseli skaitļi

Raku lieliski strādā ar ļoti lieliem skaitļiem. Tie var pārsniegt 32 bitu vai 64 bitu robežas. Piemēram, programma zemāk ir pareiza. Tā sareizina divus lielus veselus skaitļus un izdrukā pareizu rezultātu.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
