---
title: 'Solution: Nomi dei mesi'
---

{% include menu.html %}

Il programma prende i nomi dei mesi dall'array `@months`. Questo array ha dodici stringhe. Gli indici degli array iniziano da 0. Così dobbiamo togliere 1 dal numero in input. Lo facciamo prima di usarlo come indice.

## Codice

Ecco la soluzione:

```raku
my @months = <
    January February March April
    May June July August
    September October November December
>;

say @months[@*ARGS[0] - 1];
```

🦋 Trova il programma nel file [months-names.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/months-names.raku).

## Output

Esegui il programma alcune volte. Vedi nomi di mesi diversi.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Stile

Ci sono diversi modi per formattare una lista così. Puoi scegliere quello che vuoi. Confronta alcune opzioni:

```raku
my @months = <
    January February March April
    May June July August
    September October November December >;
```

Oppure:

```raku
my @months = < January   February March    April
               May       June     July     August
               September October  November December >;
```

Puoi anche mettere tutti i mesi su una riga.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
