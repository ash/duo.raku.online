---
title: 'Solution: Dump di un hash'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 Puoi trovare il codice sorgente nel file [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Output

```
{:alpha(1), :beta(2)}
```

## Commenti

1. `dd` stampa l'hash in una forma simile al codice. Ogni coppia appare come `:chiave(valore)`.

1. Le chiavi escono in ordine alfabetico. Così `alpha` viene prima di `beta`. Ma nel codice `beta` viene per primo.

{% include nav.html %}
