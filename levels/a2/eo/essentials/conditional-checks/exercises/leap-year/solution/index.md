---
title: 'Solvo: Superjaro'
---

{% include menu.html %}

## Disklajmo

La solvo sube estas por ekzercado. Ĝi trejnas vin uzi kondiĉajn kontrolojn. Raku havas enkonstruitan klason `Date`. En la reala vivo, vi povas lerni ĝiajn metodojn. Ni lernos pri ĉi tiu klaso en la dua parto de la kurso.

## Solvo

Ĉi tiuj paŝoj diras, ĉu jaro estas superjaro:

1. se jaro ne estas dividebla per 4 => komuna jaro
1. se jaro ne estas dividebla per 100 => superjaro
1. se jaro ne estas dividebla per 400 => komuna jaro
1. alie => superjaro

Raku havas enkonstruitajn tipojn por datoj kaj tempoj. Vi ankaŭ povas uzi ilin. Do la dua parto de la kurso havas ĉi tiun taskon denove.

## Kodo 1

La unua solvo sekvas ĝuste la paŝojn supre:

```raku
my $year = prompt 'Year: ';

if $year % 4 {
    say 'Common year';
}
elsif $year % 100 {
    say 'Leap year';
}
elsif $year % 400 {
    say 'Common year';
}
else {
    say 'Leap year';
}
```

🦋 Trovu la programon en la dosiero [leap-year.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year.raku).

## Kodo 2

La dua solvo metas la tutan logikon en unu esprimon. Vi ne ĉiam bezonas la rondajn krampojn. Ni aldonas ilin ĉi tie, por fari la kodon pli klara.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Trovu la programon en la dosiero [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Eligo

Provu ambaŭ programojn kun la plej gravaj kazoj. Ekzemple, uzu 1900, 2000, 2020 kaj 2021.

```console
$ raku exercises/conditional-checks/leap-year.raku
Year: 1900
Common year

$ raku exercises/conditional-checks/leap-year.raku
Year: 2000
Leap year
```

```console
$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2020
Leap year

$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2021
Common year
```

%%tipblock
## `%%` vs `%`

Kelkfoje Raku bezonas `True` aŭ `False`. Ni nomas tion Boolea kunteksto. En Boolea kunteksto, `%%` kaj `%` donas malajn rezultojn. Se unu donas `True`, la alia donas `False`. Vi povas uzi ĉi tiun fakton. Elektu unu el la du operatoroj. Tiam vi ne bezonas skribi komparon kun nulo.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # False
```
%%/tipblock

{% include nav.html %}
