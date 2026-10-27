---
title: 'Soluzione: Output ed errori'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my @data = 3, 5, 7;

my $sum = 0;
for @data -> $n {
    $sum += $n;
    $*ERR.say("running total: $sum");
}

$*OUT.say($sum);
```

🦋 Trova il programma nel file [output-and-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/output-and-error.raku).

## Output

Sullo schermo vedi tutti e due i flussi. Prima vengono i totali parziali, poi il risultato finale:

```
running total: 3
running total: 8
running total: 15
15
```

Qui buttiamo via l'errore standard. Resta solo il vero output:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Commenti

1. `$*OUT` è l'handle per l'output standard. `$*ERR` è l'handle per l'errore standard. Ognuno dei due ha il suo metodo `say`.

1. Ogni giro del ciclo aggiunge il numero successivo. Poi scrive il totale corrente su `$*ERR`. Solo la somma finale va su `$*OUT`. Sullo schermo l'avanzamento e il risultato sembrano uguali. Ma passano per flussi diversi. `2>/dev/null` manda via l'errore standard. Così resta solo il `15` finale.

{% include nav.html %}
