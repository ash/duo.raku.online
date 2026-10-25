---
title: 'Solution: Codici dei paesi'
---

{% include menu.html %}

Il programma ha un ciclo sull'array `@codes`. Per ogni codice, prende il nome dall'hash: `%cc{$_}`.

## Codice

Ecco una possibile soluzione. Non mostra tutti i paesi:

```raku
my %cc =
    AD => 'Andorra',
    AE => 'Emirati Arabi Uniti',

    # . . .

    ZM => 'Zambia',
    ZW => 'Zimbabwe'
;

my @codes = < FR IT DE EE LV US CN IN BR >;

say %cc{$_} for @codes;
```

🦋 Trova il programma nel file [country-codes.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/country-codes.raku).

## Output

Per questi codici, il programma stampa questa lista di paesi:

```console
$ raku exercises/associatives/country-codes.raku
Francia
Italia
Germania
Estonia
Lettonia
Stati Uniti d'America
Cina
India
Brasile
```

{% include nav.html %}
