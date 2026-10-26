---
title: 'Solution: La chiave esiste?'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. L'avverbio `:exists` ti dice se la chiave è presente. Non prende il valore.

1. Nell'hash non c'è la chiave `z`, quindi il risultato è `False`. Una ricerca normale può creare la chiave come effetto collaterale, ma `:exists` non lo fa.

{% include nav.html %}
