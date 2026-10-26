---
title: 'Solution: Un array nativo'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my uint8 @bytes = 100, 200, 255;
say @bytes.sum;
```

🦋 Puoi trovare il codice sorgente nel file [native-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-array.raku).

## Output

```
555
```

## Commenti

1. Il tipo nativo di dimensione fissa `uint8` va prima dell'array `@`. Questo dichiara un array in cui ogni elemento è un singolo byte senza segno. Occupa poca memoria, e questo va bene per i dati binari.

1. Il limite di riavvolgimento `0..255` vale per ogni *elemento*, ma non per la loro somma. `.sum` fa il boxing del totale in un normale `Int`. Quindi `100 + 200 + 255` dà il risultato completo `555`.

{% include nav.html %}
