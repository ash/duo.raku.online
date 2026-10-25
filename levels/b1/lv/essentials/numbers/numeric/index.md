---
title: Peldošā punkta skaitļi
---

{% include menu.html %}

Iepriekšējā sadaļā mēs redzējām, ka tādi skaitļi kā `1.5` ir [racionāli skaitļi](/lv/essentials/numbers/rats). Lai iegūtu skaitli kā `double` valodā C++, izmantojiet zinātnisko notāciju:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

Šajā gadījumā Raku izveido `Num` datu tipa objektus. Iekšēji tas tos glabā kā IEEE skaitļus.

## Iebūvētās konstantes

Zemāk ir dažas konstantes, kuras varat izmantot uzreiz. Tās ir `Num` tipa skaitļi. Katru no tām jūs varat rakstīt ASCII vai Unicode formā:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | vienāds ar `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
