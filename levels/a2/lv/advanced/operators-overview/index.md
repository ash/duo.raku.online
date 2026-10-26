---
title: Operatoru uzvedības pārskats
---

{% include menu.html %}

Izteiksmē var būt vairāki operatori. Tad Raku ir jāizlemj secība. Kurš operators ir pirmais? To nosaka divi noteikumi: _prioritāte_ un _asociativitāte_.

## Prioritāte

Prioritāte nosaka, kurš operators ir stiprāks. Stiprākais operators paņem savus operandus pirmais. Reizināšanai ir augstāka prioritāte nekā saskaitīšanai. Tāpēc reizināšana notiek pirmā:

```raku
say 2 + 3 * 4; # 14
```

Raku lasa izteiksmi kā `2 + (3 * 4)`. Rezultāts ir `14`, nevis `20`. Jūs vienmēr varat pielikt iekavas. Tās dod citu secību:

```raku
say (2 + 3) * 4; # 20
```

## Asociativitāte

Dažiem operatoriem ir _vienāda_ prioritāte. Tad secību nosaka asociativitāte. Atņemšana ir kreisi asociatīva. Tāpēc Raku to grupē no kreisās puses:

```raku
say 8 - 3 - 2; # 3
```

Tas ir `(8 - 3) - 2`. Rezultāts ir `3`. Bet kāpināšana, operators `**`, ir labēji asociatīva:

```raku
say 2 ** 3 ** 2; # 512
```

Šeit Raku grupē izteiksmi kā `2 ** (3 ** 2)`. Tas ir `2 ** 9`, un rezultāts ir `512`.

## Ķēdētas salīdzināšanas

Jūs varat _ķēdēt_ salīdzināšanas operatorus. Tad tie nāk viens pēc otra. Šādu kodu ir viegli lasīt. Tas strādā kā matemātikā:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Raku salīdzina vidējo vērtību ar abām blakus vērtībām. `1 < 2 < 3` ir patiess. Tas ir tāpēc, ka `1 < 2` ir patiess, un arī `2 < 3` ir patiess.

{% include nav.html %}
