---
title: 'Risinājums: Cik ciparu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Raku veselajiem skaitļiem nav izmēra robežas. Tāpēc Raku atrod precīzu `2 ** 1000` vērtību. Raku skaitli nenoapaļo. Skaitlis nepārplūst.

1. Parasti `chars` ir virkņu metode. Jūs varat to izsaukt arī uz vesela skaitļa. Tad tā vispirms pārvērš skaitli tekstā, bāzē 10. Pēc tam tā saskaita rakstzīmes. Šim skaitlim nav mīnusa zīmes un nav decimālā punkta. Tāpēc rakstzīmju skaits ir ciparu skaits: `302`.

{% include nav.html %}
