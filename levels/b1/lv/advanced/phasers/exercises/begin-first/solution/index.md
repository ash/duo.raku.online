---
title: 'Risinājums: Sākt pirmo'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `BEGIN { 2 + 3 }` izpildās kompilācijas laikā un dod `5`. Kad `BEGIN` bloku lieto kā izteiksmi, tas atgriež savu vērtību. Šeit šī vērtība tiek piešķirta mainīgajam `$compiled`.

1. Aprēķins notiek tikai vienu reizi, kompilācijas laikā. Kad programma darbojas, `$compiled` vienkārši satur konstanti `5`. Tā `BEGIN` var aprēķināt vērtības iepriekš. Tas nav domāts tikai agrai drukāšanai.

{% include nav.html %}
