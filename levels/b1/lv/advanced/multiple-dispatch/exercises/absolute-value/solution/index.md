---
title: 'Risinājums: Absolūtā vērtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
multi sub abs-value(Int $n where $n < 0) { -$n }
multi sub abs-value(Int $n)              { $n }

say abs-value(-7);
say abs-value(4);
```

🦋 Šīs programmas pirmkodu var atrast failā [absolute-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/absolute-value.raku).

## Izvade

```
7
4
```

## Komentāri

1. Pirmais kandidāts atbilst tikai negatīviem skaitļiem. Tas atgriež vērtību ar pretējo zīmi, kas ir pozitīva.

1. Visi citi skaitļi, tas ir, nulle un pozitīvie skaitļi, nonāk pie otrā kandidāta. Tas atgriež vērtību bez izmaiņām.

{% include nav.html %}
