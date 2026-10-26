---
title: 'Solution: Usare il convertitore'
translations_gpt: La soluzione di 'Usare il convertitore'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

Il programma, `temperature.raku`:

```raku
use Temperature;

sub MAIN($celsius) {
    say c-to-f($celsius);
}
```

🦋 Puoi trovare entrambi i file sorgente nella directory [exercises/advanced/modules-basics/use-temperature](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/use-temperature).

## Output

```console
$ raku -I. temperature.raku 100
212
```

## Commenti

1. `use Temperature` carica il modulo. Importa anche la subroutine esportata `c-to-f`. Così il programma può chiamarla direttamente.

1. `sub MAIN($celsius)` riceve l'argomento da riga di comando. Così scegli la temperatura quando esegui il programma. Non è fissa nel codice. Senza argomento, Raku stampa automaticamente un messaggio di utilizzo. Questo messaggio mostra come eseguire il programma.

1. Raku deve poter trovare il modulo. Quindi esegui il programma con `-I.`. Allora Raku cerca `Temperature.rakumod` nella directory corrente. Il programma trasforma `100` °C in `212` °F.

{% include nav.html %}
