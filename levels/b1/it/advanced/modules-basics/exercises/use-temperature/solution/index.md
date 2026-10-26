---
title: 'Solution: Usare il convertitore'
translations_gpt: La soluzione di 'Usare il convertitore'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `use Temperature` carica il modulo e importa la sua subroutine esportata `c-to-f`. Così il programma può chiamarla direttamente.

1. `sub MAIN($celsius)` riceve l'argomento da riga di comando. Così scegli la temperatura quando esegui il programma. Non è scritta nel codice. Se esegui il programma senza argomento, Raku stampa automaticamente un messaggio di utilizzo.

1. Raku deve poter trovare il modulo. Per questo esegui il programma con `-I.`. Così Raku cerca `Temperature.rakumod` nella directory corrente. La conversione di `100` °C dà `212` °F.

{% include nav.html %}
