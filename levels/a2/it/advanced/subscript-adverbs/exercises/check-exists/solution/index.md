---
title: 'Solution: La chiave esiste?'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

🦋 Puoi trovare il codice sorgente nel file [check-exists.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/check-exists.raku).

## Output

```
False
```

## Commenti

1. L'avverbio `:exists` ti dice se la chiave c'è. Non prende il valore.

1. Nell'hash non c'è la chiave `z`. Quindi il risultato è `False`. Una ricerca normale può creare la chiave come effetto collaterale. `:exists` non lo fa.

{% include nav.html %}
