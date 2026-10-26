---
title: 'Solution: Quante cifre'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say (2 ** 1000).chars;
```

🦋 Puoi trovare il codice sorgente nel file [big-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/big-factorial.raku).

## Output

```
302
```

## Commenti

1. Gli interi in Raku non hanno un limite di grandezza. Così Raku trova il valore esatto di `2 ** 1000`. Non arrotonda il numero. Il numero non va in overflow.

1. Di solito, `chars` è un metodo per le stringhe. Puoi chiamarlo anche su un intero. Allora prima trasforma il numero in testo, in base 10. Poi conta i caratteri. Questo numero non ha il segno meno e non ha il punto decimale. Così il numero di caratteri è il numero di cifre: `302`.

{% include nav.html %}
