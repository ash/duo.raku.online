---
title: 'Solution: Sort con due punti'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my @words = <pear fig apple kiwi>;
say @words.sort: *.chars;
```

🦋 Puoi trovare il codice sorgente nel file [colon-sort.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-sort.raku).

## Output

```
(fig pear kiwi apple)
```

## Commenti

1. I due punti danno la chiave di ordinamento a `sort`. Non ti servono parentesi intorno alla chiave.

1. `*.chars` è un'espressione Whatever. Significa “il numero di caratteri di ogni elemento”. `sort` la usa come chiave. Quindi la parola più corta viene per prima: `fig` (3). Poi vengono `pear` e `kiwi` (4). Poi viene `apple` (5).

1. `pear` resta prima di `kiwi`. Le due parole hanno la stessa lunghezza. E `sort` è stabile. Mantiene il vecchio ordine degli elementi con chiavi uguali.

{% include nav.html %}
