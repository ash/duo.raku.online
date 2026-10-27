---
title: 'Soluzione: Output ed errori'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

Sullo schermo compaiono tutti e due i flussi. Prima vengono i totali parziali, e poi il risultato finale:

```
running total: 3
running total: 8
running total: 15
15
```

Se butti via l'errore standard, resta solo il vero output:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Commenti

1. `$*OUT` e `$*ERR` sono gli handle per l'output standard e per l'errore standard. Ognuno dei due ha il suo metodo `say`.

1. Ogni giro aggiunge il numero successivo e scrive il totale corrente su `$*ERR`. Solo la somma finale va su `$*OUT`. Sullo schermo l'avanzamento e il risultato si somigliano. Ma passano per flussi diversi. Quindi, quando `2>/dev/null` manda via l'errore standard, resta solo il `15` finale.

{% include nav.html %}
