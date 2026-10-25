---
title: Peldošā punkta skaitļi
---

{% include menu.html %}

Iepriekšējā sadaļa parāda, ka tādi skaitļi kā `1.5` ir [racionāli skaitļi](/lv/essentials/numbers/rats). Valodā C++ ir `double` skaitļi. Raku valodā jūs arī varat izveidot tādu skaitli. Izmantojiet zinātnisko notāciju ar burtu `e` vai `E`:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

Šeit Raku izveido `Num` datu tipa vērtības. Iekšēji Raku tās glabā kā IEEE skaitļus.

## Iebūvētās konstantes

Zemāk ir dažas konstantes. Jūs varat tās izmantot uzreiz. Tās ir `Num` tipa skaitļi. Katru no tām jūs varat rakstīt ASCII vai Unicode formā:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | tas pats, kas `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
