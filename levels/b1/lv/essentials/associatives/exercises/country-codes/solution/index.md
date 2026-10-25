---
title: 'Risinājums: Valstu kodi'
---

{% include menu.html %}

Lai pārvērstu kodu nosaukumā, programma to meklē hešā: `%cc{$_}`. Tā to dara ciklā pār masīvu `@codes`.

## Kods

Šeit ir viens iespējamais risinājums, bez pilna valstu saraksta:

```raku
my %cc =
    AD => 'Andora',
    AE => 'Apvienotie Arābu Emirāti',

    # . . .

    ZM => 'Zambija',
    ZW => 'Zimbabve'
;

my @codes = < FR IT DE EE LV US CN IN BR >;

say %cc{$_} for @codes;
```

🦋 Atrodi programmu failā [country-codes.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/country-codes.raku).

## Izvade

Ar uzdevuma kodiem programma izdrukā šādas valstis:

```console
$ raku exercises/associatives/country-codes.raku
Francija
Itālija
Vācija
Igaunija
Latvija
Amerikas Savienotās Valstis
Ķīna
Indija
Brazīlija
```

{% include nav.html %}
