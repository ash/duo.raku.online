---
title: 'Solution: Prezzo all''ingrosso'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il primo candidato ha una clausola `where` che accetta solo quantità di 10 o più. Quindi la chiamata `price(25)` arriva a questo candidato.

1. Il secondo candidato non ha nessuna condizione, quindi raccoglie tutte le altre chiamate. Per questo `price(3)` va lì.

{% include nav.html %}
