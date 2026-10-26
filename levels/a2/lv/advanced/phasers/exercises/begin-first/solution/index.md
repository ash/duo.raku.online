---
title: 'Risinājums: Sākt pirmo'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Šīs programmas pirmkodu var atrast failā [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Izvade

```
5
```

## Komentāri

1. `BEGIN { 2 + 3 }` izpildās kompilācijas laikā. Tas dod `5`. Šeit `BEGIN` bloks ir izteiksme. Tāpēc tas atgriež savu vērtību. Programma ieliek šo vērtību mainīgajā `$compiled`.

1. Aprēķins notiek tikai vienu reizi, kompilācijas laikā. Kad programma darbojas, `$compiled` vienkārši glabā nemainīgo vērtību `5`. Tāpēc jūs varat lietot `BEGIN`, lai aprēķinātu vērtības agri. Tas nav tikai agrai drukāšanai.

{% include nav.html %}
