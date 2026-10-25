---
title: 'Solvo: Lando kodoj'
---

{% include menu.html %}

Por ŝanĝi kodon en nomon, la programo serĉas ĝin en la haketo: `%cc{$_}`. Ĝi faras tion en buklo super la tabelo `@codes`.

## Kodo

Jen unu ebla solvo, sen la plena listo de landoj:

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

Kun la kodoj el la tasko, la programo presas la jenajn landojn:

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
