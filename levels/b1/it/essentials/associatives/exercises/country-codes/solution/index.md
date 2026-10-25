---
title: 'Solution: Codici dei paesi'
---

{% include menu.html %}

Per trasformare un codice in un nome, il programma lo cerca nell'hash: `%cc{$_}`. Lo fa in un ciclo sull'array `@codes`.

## Codice

Ecco una possibile soluzione, senza la lista completa dei paesi:

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

Con i codici del compito, il programma stampa i seguenti paesi:

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
