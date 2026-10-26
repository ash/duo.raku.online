---
title: 'Solution: Un array nativo'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Scrivi il tipo nativo di dimensione fissa `uint8` prima dell'array `@`. Allora Raku conserva ogni elemento in un byte. Questo byte è senza segno: non ha il segno meno. Un array così occupa poca memoria. Questo va bene per i dati binari.

1. Ogni *elemento* ha un limite, `0..255`. Oltre questo limite, i valori si riavvolgono. Ma il limite non vale per la somma degli elementi. `.sum` mette il totale in un normale `Int`. Così `100 + 200 + 255` dà il risultato completo `555`.

{% include nav.html %}
