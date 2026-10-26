---
title: 'Solution: Sconto predefinito'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Potete trovare il codice sorgente nel file [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Naturalmente, c'è una soluzione più semplice. Date alla variabile il valore `0` quando la create:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Output

```
0
15
```

## Commenti

1. Il trait `is default(0)` dà al contenitore un valore di riserva. Il contenitore lo usa finché non assegnate qualcosa. Se leggete la variabile, ottenete `0`. Senza un valore predefinito dichiarato, ottenete un avvertimento di _valore non inizializzato_. Qui questo avvertimento non c'è.

1. Dopo l'assegnazione, il contenitore contiene `15`. Il valore predefinito non conta più.

{% include nav.html %}
