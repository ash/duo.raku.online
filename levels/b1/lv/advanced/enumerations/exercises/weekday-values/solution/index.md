---
title: 'Risinājums: Darba dienu numuri'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Ja rakstāt konstantes kā pārus, jūs varat izvēlēties skaitļus. Šeit tie sākas no `1`.

1. Ja izsaucat uzskaitījuma tipu kā `Day(5)`, tas veic apgriezto uzmeklēšanu. Tas atrod konstanti ar vērtību `5`, proti, `Fri`. Tāpat `Day(1)` dod `Mon`. Tas ir pretējais izteiksmei `Fri.value`, kas iet no nosaukuma uz skaitli.

{% include nav.html %}
