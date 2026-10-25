---
title: 'Solvo: Lando kodoj'
---

{% include menu.html %}

La programo havas buklon super la tabelo `@codes`. Por ĉiu kodo, ĝi prenas la nomon el la haketo: `%cc{$_}`.

## Kodo

Jen ebla solvo. Ĝi ne montras ĉiujn landojn:

```raku
my %cc =
    AD => 'Andoro',
    AE => 'Unuiĝintaj Arabaj Emirlandoj',

    # . . .

    ZM => 'Zambio',
    ZW => 'Zimbabvo'
;

my @codes = < FR IT DE EE LV US CN IN BR >;

say %cc{$_} for @codes;
```

🦋 Trovu la programon en la dosiero [country-codes.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/country-codes.raku).

## Eligo

Por ĉi tiuj kodoj, la programo presas ĉi tiun liston de landoj:

```console
$ raku exercises/associatives/country-codes.raku
Francio
Italio
Germanio
Estonio
Latvio
Unuiĝintaj Ŝtatoj de Ameriko
Ĉinio
Hindio
Brazilo
```

{% include nav.html %}
