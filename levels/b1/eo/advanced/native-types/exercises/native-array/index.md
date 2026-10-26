---
title: Denaska tabelo
translations_gpt:
---

{% include menu.html %}

## Problemo

La natura uzo de fiksgranda indiĝena tipo estas tabelo de bajtoj. Tia tabelo uzas malmulte da memoro. Deklaru `uint8`-tabelon kun la valoroj `100`, `200` kaj `255`. Ĉiu el ili konvenas en unu solan bajton. Poste presu la sumon de ĝiaj elementoj.

Rimarku, ke ĉiu elemento restas en la intervalo `0..255`, sed la sumo povas iri pli alten. Tio estas, ĉar `.sum` redonas normalan `Int`.

## Ekzemplo

La programo presas:

```
555
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
