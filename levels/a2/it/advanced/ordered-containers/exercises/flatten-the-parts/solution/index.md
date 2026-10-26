---
title: 'Solution: Appiattire le parti'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my @first = 1, 2;
my @second = 3, 4, 5;

my @all = flat(@first, @second);
say @all;
say @all.elems;
```

🦋 Puoi trovare il codice sorgente nel file [flatten-the-parts.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/flatten-the-parts.raku).

## Output

```
[1 2 3 4 5]
5
```

## Commenti

1. Il codice `my @all = @first, @second` _non_ dà un array piatto. Crea un array annidato con due array: `[[1 2] [3 4 5]]`.

1. La routine `flat` mette insieme gli elementi dei due array. Crea una sola sequenza piatta. Il programma mette questa sequenza in `@all`. Il risultato ha cinque elementi.

{% include nav.html %}
