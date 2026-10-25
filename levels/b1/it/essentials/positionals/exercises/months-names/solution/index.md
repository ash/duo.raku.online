---
title: 'Solution: Nomi dei mesi'
---

{% include menu.html %}

I nomi dei mesi vengono dall'array `@months`, che ha dodici stringhe. Gli indici degli array iniziano da 0. Quindi, prima di indicizzare l'array, sottraiamo 1 dal numero in input.

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

Esegui il programma alcune volte per vedere nomi di mesi diversi.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Stile

Puoi scegliere come formattare liste come quella di questo programma. Ecco alcune opzioni da confrontare:

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

Puoi anche elencare tutti i mesi in una singola riga.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
