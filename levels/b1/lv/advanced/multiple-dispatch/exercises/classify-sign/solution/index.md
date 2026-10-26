---
title: 'Risinājums: Klasificēt izmēru'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Šīs programmas pirmkodu var atrast failā [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Izvade

```
small
medium
large
```

## Komentāri

1. Visi trīs kandidāti pieņem vienu `Int`, tāpēc bez `where` klauzulām tie konfliktētu. Nosacījumi pirmajos divos padara tos atšķirīgus. Trešais uztver visu pārējo.

1. `where` klauzulas pārbauda `$n.abs`. Tāpēc rezultātu nosaka tikai skaitļa lielums, un zīmi neņem vērā. `size(7)` atbilst pirmajam kandidātam (`small`). Izsaukumā `size(-250)` absolūtā vērtība ir `250`. Tā neatbilst nevienam no abiem nosacījumiem un nonāk pie universālā kandidāta (`large`).

1. Kandidātus pārbauda no specifiskākā uz vispārīgāko. Šeit tā ir tieši secība, kādā tie ir uzrakstīti.

{% include nav.html %}
