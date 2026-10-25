---
title: 'Risinājums: Valstu kodi'
---

{% include menu.html %}

Programmā ir cikls pār masīvu `@codes`. Katram kodam tā ņem nosaukumu no heša: `%cc{$_}`.

## Kods

Šeit ir iespējamais risinājums. Tas nerāda visas valstis:

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

Šiem kodiem programma izdrukā šo valstu sarakstu:

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
