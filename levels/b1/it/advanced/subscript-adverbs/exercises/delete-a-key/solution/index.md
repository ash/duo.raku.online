---
title: 'Solution: Eliminare una chiave'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my %h = a => 1, b => 2, c => 3;
%h<b>:delete;
say %h.elems;
```

🦋 Puoi trovare il codice sorgente nel file [delete-a-key.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/delete-a-key.raku).

## Output

```
2
```

## Commenti

1. L'avverbio `:delete` rimuove l'elemento dall'hash. Restituisce anche il valore, ma qui lo ignoriamo.

1. L'hash aveva tre elementi all'inizio, e ora ne ha `2`. Questo mostra che uno è stato rimosso. Contiamo con `.elems`, che non dipende dall'ordine delle chiavi. Così l'output è sempre lo stesso.

{% include nav.html %}
