---
title: 'Solution: Sconto predefinito'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione del compito.

## Codice

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Potete trovare il codice sorgente nel file [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Naturalmente, sarebbe più semplice dare subito alla variabile il valore `0`:

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

1. Il trait `is default(0)` dà al contenitore un valore da usare finché non gli viene assegnato qualcosa. Quando leggete la variabile, ottenete `0`. A differenza di un valore predefinito non dichiarato, non c'è nessun avvertimento di _valore non inizializzato_.

1. Dopo l'assegnazione, il contenitore contiene `15`, e il valore predefinito non è più importante.

{% include nav.html %}
