---
title: Denaska tabelo
translations_gpt:
---

{% include menu.html %}

## Problemo

Indiĝenaj tipoj kun fiksa grandeco taŭgas por tabeloj de bajtoj. Tiaj tabeloj uzas malmulte da memoro. Faru `uint8`-tabelon kun la valoroj `100`, `200` kaj `255`. Ĉiu valoro konvenas en unu bajton. Presu la sumon de la elementoj.

La elementoj restas en la intervalo `0..255`. Sed ilia sumo povas esti pli granda. `.sum` redonas normalan `Int`.

## Ekzemplo

La programo presas:

```
555
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
