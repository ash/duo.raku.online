---
title: 'Solution: Prezzo all''ingrosso'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
multi sub price(Int $qty where $qty >= 10) { say 'bulk price' }
multi sub price(Int $qty)                  { say 'normal price' }

price(3);
price(25);
```

🦋 Puoi trovare il codice sorgente nel file [bulk-pricing.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/bulk-pricing.raku).

## Output

```
normal price
bulk price
```

## Commenti

1. Il primo candidato ha una clausola `where`. Accetta solo quantità di 10 o più. Quindi la chiamata `price(25)` va a questo candidato.

1. Il secondo candidato non ha nessuna condizione. Prende tutte le altre chiamate. Quindi `price(3)` va lì.

{% include nav.html %}
