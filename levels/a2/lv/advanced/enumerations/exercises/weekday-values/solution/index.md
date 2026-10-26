---
title: 'Risinājums: Darba dienu numuri'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 Atrodiet programmu failā [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Izvade

```
Fri
Mon
```

## Komentāri

1. Mēs rakstām konstantes kā pārus. Tāpēc mēs varam izvēlēties skaitļus. Šeit tie sākas no `1`.

1. `Day(5)` izsauc uzskaitījuma tipu. Tas meklē pretējā virzienā, no skaitļa uz konstanti. Tas atrod konstanti ar vērtību `5`. Šī konstante ir `Fri`. Tāpat `Day(1)` dod `Mon`. `Fri.value` dara pretējo. Tas iet no nosaukuma uz skaitli.

{% include nav.html %}
