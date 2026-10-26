---
title: 'Solution: Chiave e valore'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my %h = x => 10, y => 20;
say %h<x>:kv;
```

🦋 Puoi trovare il codice sorgente nel file [key-and-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/key-and-value.raku).

## Output

```
(x 10)
```

## Commenti

1. L'avverbio `:kv` restituisce la chiave e il valore. Li dà come lista.

1. Per un hash, la chiave è il nome nell'indice. Quindi `%h<x>:kv` dà la lista `(x 10)`.

{% include nav.html %}
