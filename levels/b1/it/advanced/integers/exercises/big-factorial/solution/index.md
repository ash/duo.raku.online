---
title: 'Solution: Quante cifre'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Raku calcola `2 ** 1000` in modo esatto. Non arrotonda il numero e non va in overflow, perché gli interi hanno precisione arbitraria.

1. `chars` di solito è un metodo per le stringhe. Quando lo chiami su un intero, prima trasforma il numero in testo decimale. Poi conta i caratteri. Qui non c'è il segno meno e non c'è il punto decimale. Quindi il numero di caratteri è esattamente il numero di cifre, `302`.

{% include nav.html %}
