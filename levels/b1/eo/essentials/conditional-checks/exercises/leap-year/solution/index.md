---
title: 'Solvo: Superjaro'
---

{% include menu.html %}

## Disklajmo

La solvo sube servas kiel ekzerco pri kondiĉaj kontroloj. Por veraj taskoj, vi povas studi la metodojn de la enkonstruita klaso `Date`. Ĉi tiu klaso venas en la dua parto de la kurso.

## Solvo

Ĉi tiu algoritmo diras, ĉu jaro estas superjaro:

1. se jaro ne estas dividebla per 4 => komuna jaro
1. se jaro ne estas dividebla per 100 => superjaro
1. se jaro ne estas dividebla per 400 => komuna jaro
1. alie => superjaro

Notu, ke Raku havas enkonstruitajn tipojn por labori kun datoj kaj tempoj. Do ni revenos al ĉi tiu tasko en la dua parto de la kurso.

## Kodo 1

La unua solvo faras ĝuste tion, kion diras la paŝoj supre:

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

En la dua solvo, la tuta logiko estas en unu sola esprimo. La krampoj ne ĉiam estas necesaj, sed ĉi tie ili faras la kodon pli klara.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Trovu la programon en la dosiero [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Eligo

Testu ambaŭ programojn per la plej gravaj kazoj, ekzemple, 1900, 2000, 2020 kaj 2021.

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

Notu, ke en Boolea kunteksto, la operatoroj `%%` kaj `%` donas malajn rezultojn. Vi povas uzi tion por elekti la ĝustan operatoron. Tiam vi ne bezonas skribi komparon kun nulo.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # False
```
%%/tipblock

{% include nav.html %}
