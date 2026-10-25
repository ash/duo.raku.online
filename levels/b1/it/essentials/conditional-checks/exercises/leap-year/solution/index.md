---
title: 'Solution: Anno bisestile'
---

{% include menu.html %}

## Disclaimer

La soluzione qui sotto serve come pratica con i controlli condizionali. Per i compiti reali, puoi studiare i metodi della classe `Date` integrata. Questa classe arriva nella seconda parte del corso.

## Soluzione

Questo algoritmo dice se un anno è bisestile:

1. se l'anno non è divisibile per 4 => anno comune
1. se l'anno non è divisibile per 100 => anno bisestile
1. se l'anno non è divisibile per 400 => anno comune
1. altrimenti => anno bisestile

Nota che Raku ha tipi integrati per lavorare con date e orari. Per questo torneremo su questo compito nella seconda parte del corso.

## Codice 1

La prima soluzione fa esattamente quello che dicono i passi qui sopra:

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

Nella seconda soluzione, tutta la logica sta in una sola espressione. Le parentesi non sono sempre necessarie, ma qui rendono il codice più chiaro.

```raku
my $year = prompt 'Anno: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Anno bisestile' !! 'Anno comune';
```

🦋 Trova il programma nel file [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Output

Prova entrambi i programmi con i casi più importanti, per esempio 1900, 2000, 2020 e 2021.

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

Nota che in un contesto booleano gli operatori `%%` e `%` danno risultati opposti. Puoi usare questo fatto per scegliere l'operatore giusto. Così non serve scrivere un confronto con zero.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # Falso
```
%%/tipblock

{% include nav.html %}
