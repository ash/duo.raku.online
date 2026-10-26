---
title: 'Solution: Sort con due punti'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. I due punti passano la chiave di ordinamento a `sort`. Non servono parentesi intorno a essa.

1. `*.chars` è un'espressione Whatever che significa “il numero di caratteri di ogni elemento”. `sort` la usa come chiave, quindi le parole più corte vengono per prime. Prima viene `fig` (3), poi `pear` e `kiwi` (4), e poi `apple` (5).

1. `pear` resta prima di `kiwi` perché le due parole hanno la stessa lunghezza. Inoltre `sort` è stabile, e questo significa che mantiene l'ordine originale delle chiavi uguali.

{% include nav.html %}
