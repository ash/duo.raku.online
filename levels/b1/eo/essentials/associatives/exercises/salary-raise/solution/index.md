---
title: 'Solvo: Salajra altiĝo'
---

{% include menu.html %}

La programo devas ŝanĝi unu el la valoroj en la haketo. Asigni la novan valoron funkcias preskaŭ same kiel ĉe skalara variablo.

## Kodo

Jen la solvo:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;

my $raise = 5; # en procentoj

%employee<salary> *= (1 + $raise / 100);
say "Nova salajro de %employee<full-name>: %employee<salary>";
```

🦋 Trovu la programon en la dosiero [salary-raise.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/salary-raise.raku).

## Eligo

Kiam vi rulas la programon, kontrolu, ke viaj kalkuloj estas ĝustaj. Kontrolu ankaŭ, ke vi ĝuste konvertis la procentojn.

```console
$ raku exercises/associatives/salary-raise.raku
Nova salajro de Eliza Vents: 3150
```

{% include nav.html %}
