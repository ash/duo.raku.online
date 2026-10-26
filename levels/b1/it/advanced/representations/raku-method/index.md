---
title: Il metodo `.raku`
---

{% include menu.html %}

Il terzo metodo di rappresentazione è `.raku`. Restituisce una stringa con una rappresentazione del valore **simile al codice**. Idealmente, potresti incollare questa stringa in un programma e riavere lo stesso valore. Ogni valore in Raku ha questo metodo.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Nota che la stringa `'Raku'` torna con le virgolette intorno. Così puoi vedere subito la differenza tra un numero e una stringa. È proprio il tipo di dettaglio che ti serve quando fai il debug.

Il metodo funziona anche per dati composti, perfino per strutture annidate:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

Poiché `.raku` restituisce una stringa normale, puoi usarlo ovunque serva una stringa. Per esempio, puoi metterlo dentro una stringa tra virgolette doppie:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Usa `.raku` quando ti serve la rappresentazione simile al codice come stringa. Allora puoi combinarla con i tuoi messaggi. Molto presto presenteremo `dd`. Questo strumento di Rakudo stampa per te lo stesso tipo di rappresentazione in un solo passo.

{% include nav.html %}
