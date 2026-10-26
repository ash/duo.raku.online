---
title: 'Risinājums: Pakotne'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Šīs programmas pirmkodu var atrast failā [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Izvade

```
0
212
```

## Komentāri

1. Gan mainīgais, gan apakšprogramma ir deklarēti ar `our`. Tāpēc abi kļūst par `Temperature` vārdtelpas daļu, un tos var sasniegt no ārpuses.

1. Mainīgajam piekļūst kā `$Temperature::freezing`: sigils, pakotnes nosaukums, tad mainīgā nosaukums. Apakšprogrammu izsauc kā `Temperature::fahrenheit(100)`. Pārvēršot `100`, iegūst `100 * 9/5 + 32`, kas ir `212`.

1. Vienkāršs `package` jums dod tikai vārdtelpu. Atkārtoti lietojamai bibliotēkai mēs tā vietā izmantotu `module`. Kad strādājam ar objektiem, mēs izmantotu `class`. Bet vārdtelpa katrā gadījumā darbojas vienādi.

{% include nav.html %}
