---
title: 'Solvo: Salajra altiĝo'
---

{% include menu.html %}

La programo devas ŝanĝi unu valoron en la haketo. Vi asignas novan valoron al ĝi. Tio estas preskaŭ same kiel ĉe skalara variablo.

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

Rulu la programon. Kontrolu, ke la kalkuloj estas ĝustaj. Kontrolu ankaŭ, ke vi ĝuste konvertas la procentojn.

```console
$ raku exercises/associatives/salary-raise.raku
Nova salajro de Eliza Vents: 3150
```

{% include nav.html %}
