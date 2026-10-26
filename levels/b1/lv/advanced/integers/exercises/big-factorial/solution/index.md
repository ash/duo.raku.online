---
title: 'Risinājums: Cik ciparu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
say (2 ** 1000).chars;
```

🦋 Programmas pirmkodu var atrast failā [big-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/big-factorial.raku).

## Izvade

```
302
```

## Komentāri

1. Raku precīzi aprēķina `2 ** 1000`. Raku skaitli nenoapaļo, un tas nepārplūst, jo veselajiem skaitļiem ir patvaļīga precizitāte.

1. `chars` parasti ir virkņu metode. Kad jūs to izsaucat uz vesela skaitļa, tā vispirms pārvērš skaitli decimālā tekstā. Pēc tam tā saskaita rakstzīmes. Šeit nav ne mīnusa zīmes, ne decimālā punkta. Tāpēc rakstzīmju skaits ir tieši ciparu skaits, `302`.

{% include nav.html %}
