---
title: 'Risinājums: Absolūtā vērtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Pirmais kandidāts strādā tikai ar negatīviem skaitļiem. Tas atgriež skaitli ar pretējo zīmi. Šī vērtība ir pozitīva.

1. Visi citi skaitļi nonāk pie otrā kandidāta. Tie ir nulle un pozitīvie skaitļi. Otrais kandidāts atgriež vērtību tādu, kāda tā ir.

{% include nav.html %}
