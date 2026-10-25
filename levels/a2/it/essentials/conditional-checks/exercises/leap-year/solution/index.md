---
title: 'Solution: Anno bisestile'
---

{% include menu.html %}

## Disclaimer

La soluzione qui sotto serve per fare pratica. Ti allena a usare i controlli condizionali. Raku ha una classe `Date` integrata. Nella vita reale, puoi imparare i suoi metodi. Studiamo questa classe nella seconda parte del corso.

## Soluzione

Questi passi dicono se un anno è bisestile:

1. se l'anno non è divisibile per 4 => anno comune
1. se l'anno non è divisibile per 100 => anno bisestile
1. se l'anno non è divisibile per 400 => anno comune
1. altrimenti => anno bisestile

Raku ha tipi integrati per date e orari. Puoi usare anche quelli. Per questo la seconda parte del corso ha di nuovo questo compito.

## Codice 1

La prima soluzione segue esattamente i passi qui sopra:

```raku
my $year = prompt 'Anno: ';

if $year % 4 {
    say 'Anno comune';
}
elsif $year % 100 {
    say 'Anno bisestile';
}
elsif $year % 400 {
    say 'Anno comune';
}
else {
    say 'Anno bisestile';
}
```

🦋 Trova il programma nel file [leap-year.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year.raku).

## Codice 2

La seconda soluzione mette tutta la logica in una sola espressione. Non sempre ti servono le parentesi tonde. Qui le aggiungiamo per rendere il codice più chiaro.

```raku
my $year = prompt 'Anno: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Anno bisestile' !! 'Anno comune';
```

🦋 Trova il programma nel file [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Output

Prova tutti e due i programmi con i casi più importanti. Per esempio, usa 1900, 2000, 2020 e 2021.

```console
$ raku exercises/conditional-checks/leap-year.raku
Anno: 1900
Anno comune

$ raku exercises/conditional-checks/leap-year.raku
Anno: 2000
Anno bisestile
```

```console
$ raku exercises/conditional-checks/leap-year-formula.raku
Anno: 2020
Anno bisestile

$ raku exercises/conditional-checks/leap-year-formula.raku
Anno: 2021
Anno comune
```

%%tipblock
## `%%` vs `%`

A volte Raku ha bisogno di `True` o `False`. Lo chiamiamo contesto booleano. In un contesto booleano, `%%` e `%` danno risultati opposti. Se uno dà `True`, l'altro dà `False`. Puoi usare questo fatto. Scegli uno dei due operatori. Allora non serve scrivere un confronto con zero.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # Falso
```
%%/tipblock

{% include nav.html %}
