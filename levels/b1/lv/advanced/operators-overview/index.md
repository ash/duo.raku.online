---
title: Operatoru uzvedības pārskats
---

{% include menu.html %}

Kad izteiksmē ir vairāki operatori, Raku ir jāizlemj, kādā secībā tos lietot. To nosaka divi noteikumi: _prioritāte_ un _asociativitāte_.

## Prioritāte

Prioritāte nosaka, kurš operators ir stiprāks, tas ir, kurš saistās ciešāk. Reizināšanai ir augstāka prioritāte nekā saskaitīšanai, tāpēc to izpilda pirmo:

```raku
say 2 + 3 * 4; # 14
```

Raku lasa izteiksmi kā `2 + (3 * 4)`, tāpēc rezultāts ir `14`, nevis `20`. Jūs vienmēr varat izmantot iekavas, lai iegūtu citu secību:

```raku
say (2 + 3) * 4; # 20
```

## Asociativitāte

Asociativitāte nosaka secību, kad operatoriem ir _vienāda_ prioritāte. Atņemšana ir kreisi asociatīva, un tas nozīmē, ka tā grupējas no kreisās puses:

```raku
say 8 - 3 - 2; # 3
```

Tas ir `(8 - 3) - 2`, kas dod `3`. Kāpināšana savukārt ir labēji asociatīva:

```raku
say 2 ** 3 ** 2; # 512
```

Šeit izteiksme grupējas kā `2 ** (3 ** 2)`. Tas ir `2 ** 9`, kas dod `512`.

## Ķēdētas salīdzināšanas

Salīdzināšanas operatorus var _ķēdēt_. Tas lasās dabiski un dara to, ko jūs sagaidītu no matemātikas:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Vidējo vērtību salīdzina ar vērtībām abās tās pusēs. Tāpēc `1 < 2 < 3` ir patiess, jo gan `1 < 2`, gan `2 < 3` ir patiesi.

{% include nav.html %}
