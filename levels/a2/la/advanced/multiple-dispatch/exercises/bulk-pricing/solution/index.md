---
title: 'Solutio: Pretium ingens'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
multi sub price(Int $qty where $qty >= 10) { say 'bulk price' }
multi sub price(Int $qty)                  { say 'normal price' }

price(3);
price(25);
```

🦋 Inveni codicem fontem in archivo [bulk-pricing.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/bulk-pricing.raku).

## Exitus

```
normal price
bulk price
```

## Commentarii

1. Primus candidatus clausulam `where` habet. Solum quantitates 10 vel maiores accipit. Itaque vocatio `price(25)` ad hunc candidatum it.

1. Secundus candidatus nullam condicionem habet. Omnes alias vocationes accipit. Itaque `price(3)` illuc it.

{% include nav.html %}
