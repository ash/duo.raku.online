---
title: 'Solution: Eliminare una chiave'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. L'avverbio `:delete` rimuove l'elemento dall'hash. Restituisce anche il valore, ma qui non lo usiamo.

1. All'inizio, l'hash aveva tre elementi. Ora ne ha `2`. Quindi un elemento non c'è più. Contiamo gli elementi con `.elems`. L'ordine delle chiavi qui non conta. Così l'output è sempre lo stesso.

{% include nav.html %}
